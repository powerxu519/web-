import re
import urllib.parse
from pymysql import connect

"""
URL_FUNC_DICT = {
    "/index.html": index,
    "/center.html": center
}
"""

URL_FUNC_DICT = dict()


def route(url):
    def set_func(func):
        # URL_FUNC_DICT["/index.py"] = index
        URL_FUNC_DICT[url] = func

        def call_func(*args, **kwargs):
            return func(*args, **kwargs)

        return call_func

    return set_func


@route(r"/index.html$")
def index(ret):
    with open("./index.html", 'rb') as f:
        content = f.read()
        content = content.decode('utf-8')

    html = "欢迎来到易烊千玺的小屋哟！"
    content = re.sub(r"\{%content%\}", html, content)
    return content


@route(r"/photo.html")
def photo(ret):
    with open("./photo.html", 'rb') as f:
        content = f.read()
        content = content.decode('utf-8')

    return content


@route(r"/dance.html")
def dance(ret):
    with open("./dance.html", 'rb') as f:
        content = f.read()
        content = content.decode('utf-8')

    conn = connect(host='localhost', port=3306, user='root', password='13795165400yx', database='wq',
                   charset='utf8')
    cs = conn.cursor()
    cs.execute("select * from dance;")
    stock_infos = cs.fetchall()
    cs.close()
    conn.close()

    tr_template = """<tr>
                <td>%s</td>
                <td>%s</td>
                <td>%s</td>
                </tr>
            """

    html = ""
    for line_info in stock_infos:
        html += tr_template % (line_info[1], line_info[2], line_info[3])

    content = re.sub(r"\{%content%\}", html, content)

    return content


@route(r"/songs1.html")
def songs1(ret):
    with open("./songs1.html", 'rb') as f:
        content = f.read()
        content = content.decode('utf-8')

    conn = connect(host='localhost', port=3306, user='root', password='13795165400yx', database='wq',
                   charset='utf8')
    cs = conn.cursor()
    cs.execute("select * from yyqx limit 0,10;")
    stock_infos = cs.fetchall()
    cs.close()
    conn.close()

    tr_template = """<tr>
            <td>%s</td>
            <td>%s</td>
            <td>%s</td>
            <td>%s</td>
            <td>%s</td>
            <td>%s</td>
            </tr>
        """

    html = ""
    for line_info in stock_infos:
        html += tr_template % (line_info[1], line_info[2], line_info[3], line_info[4], line_info[5], line_info[6])

    content = re.sub(r"\{%content%\}", html, content)

    return content


@route(r"/songs2.html")
def songs2(ret):
    with open("./songs1.html", 'rb') as f:
        content = f.read()
        content = content.decode('utf-8')

    conn = connect(host='localhost', port=3306, user='root', password='13795165400yx', database='wq',
                   charset='utf8')
    cs = conn.cursor()
    cs.execute("select * from yyqx limit 10,10;")
    stock_infos = cs.fetchall()
    cs.close()
    conn.close()

    tr_template = """<tr>
            <td>%s</td>
            <td>%s</td>
            <td>%s</td>
            <td>%s</td>
            <td>%s</td>
            <td>%s</td>
            </tr>
        """

    html = ""
    for line_info in stock_infos:
        html += tr_template % (line_info[1], line_info[2], line_info[3], line_info[4], line_info[5], line_info[6])

    content = re.sub(r"\{%content%\}", html, content)

    return content


@route(r"/songs3.html")
def songs3(ret):
    with open("./songs1.html", 'rb') as f:
        content = f.read()
        content = content.decode('utf-8')

    conn = connect(host='localhost', port=3306, user='root', password='13795165400yx', database='wq',
                   charset='utf8')
    cs = conn.cursor()
    cs.execute("select * from yyqx limit 20,10;")
    stock_infos = cs.fetchall()
    cs.close()
    conn.close()

    tr_template = """<tr>
            <td>%s</td>
            <td>%s</td>
            <td>%s</td>
            <td>%s</td>
            <td>%s</td>
            <td>%s</td>
            </tr>
        """

    html = ""
    for line_info in stock_infos:
        html += tr_template % (line_info[1], line_info[2], line_info[3], line_info[4], line_info[5], line_info[6])

    content = re.sub(r"\{%content%\}", html, content)

    return content


@route(r"/index.html\?songs=(.*)")
def songs(ret):
    key = ret.group(1)
    key = urllib.parse.unquote(key)
    conn = connect(host='localhost', port=3306, user='root', password='13795165400yx', database='wq',
                   charset='utf8')
    cs = conn.cursor()
    cs.execute("select 歌名,发行时间,歌曲来源,语言,歌曲类型,发行方式 from yyqx where 歌名=%s;", key)
    stock_infos = cs.fetchone()
    cs.close()
    conn.close()

    with open("./index.html", 'rb') as f:
        content = f.read()
        content = content.decode('utf-8')
    if not stock_infos:
        html2 = "找不到诶，这首歌是你唱的吗？？？"
        content = re.sub(r"\{%content%\}", html2, content)
        return content
    html = ""
    tr_template = """歌名:%s    发行时间:%s    歌曲来源:%s    语言:%s        歌曲类型:%s    发行方式:%s"""
    html += tr_template % (stock_infos[0], str(stock_infos[1]), stock_infos[2], stock_infos[3], stock_infos[4], stock_infos[5])
    content = re.sub(r"\{%content%\}", html, content)
    return content


def application(env, start_response):
    # print("你好世界")
    start_response('200 OK', [('Content-Type', 'text/html;charset=utf-8')])

    file_name = env['PATH_INFO']
    # file_name = "/index.py"

    """
    if file_name == "/index.py":
        return index()
    elif file_name == "/center.py":
        return center()
    else:
        return 'Hello World! 我爱你中国....'
    """

    try:
        # func = URL_FUNC_DICT[file_name]
        # return func()
        # return URL_FUNC_DICT[file_name]()
        for url, func in URL_FUNC_DICT.items():
            # {
            #   r"/index.html":index,
            #   r"/center.html":center,
            #   r"/add/\d+\.html":add_focus
            # }
            ret = re.match(url, file_name)
            if ret:
                return func(ret)
        else:
            return "请求的url(%s)没有对应的函数...." % file_name

    except Exception as ret:
        return "产生了异常：%s" % str(ret)
