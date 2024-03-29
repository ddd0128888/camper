<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CAMPER</title>
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="stylesheet" href="/css/modal.css">
    <link rel="stylesheet" href="/css/main.css">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

    <style>
        @media screen and (max-width: 1780px) {
            .second_item:last-child {
                display: none;
            }
        }

        @media screen and (max-width: 1250px) {
            .header_container {
                width: 100%;
                padding: 12vw;
                padding-top: 20px;
                padding-bottom: 0;
                margin-top: 20px;
                display: flex;
                align-items: center;
            }

            .logo img {
                width: 130px;
                height: 30px;
            }

            .tab_menu_container {
                display: none;
                flex-direction: column;
                align-items: center;
                width: 100%;

            }

            .tab_menu_btn {
                width: 100%;
                text-align: center;
            }

            .burgerBar {}

            .burger_menu_container {
                justify-content: end;
                z-index: -1;
                margin-right: 10px;
            }

            .burger_menu {
                background: none;
                border: 0;
                outline: 0;
                cursor: pointer;
                width: 15%;
                height: 40px;
                transition: 0.3s all;
                text-align: center;
                font-size: 25px;
                font-weight: 500;
                color: #fff;
                display: block;
                padding: 5px 0 0 20px;
            }


            .tab_menu_container.active {
                display: flex;
                background-color: black;
                color: white;
            }
        }

        @media screen and (max-width: 950px) {

            .leftItem {
                width: 100%;
                height: 400px;
                margin: 0px;
            }

            .third_item_thumb1 {
                height: 275px;
            }

            .third_txt1 {
                height: 125px;
                width: 100%;
                border-radius: 0px 0px 12px 12px;
                font-weight: bold;
            }

            .rightItem {
                display: none;
            }

            .thirdContainer {
                display: flex;
                padding: 30px 10px 10px 10px;
                height: 400px;
                width: 100%;
            }

            body {
                background-size: 100% 700px;
            }

            header {
                height: 150px;
                width: 100%;
            }

            .first_section {
                margin: 0 12vw 20px 12vw;
            }

            .first_article {
                width: 60%;
                margin-bottom: -50px;
            }

            .article_title {
                font-size: 30px;
                white-space: pre-line;
                color: #ef8f1e;
                font-weight: 500;
            }

            .article_content {
                font-size: 18px;
                font-weight: 300;
                color: #fff;
                margin-top: 20px;
                line-height: 27px;
                overflow: hidden;
            }

            .article_view {
                font-size: 20px;
                font-weight: 400;
                margin-top: 5px;
                overflow: hidden;
            }
            
            
        }
    </style>
</head>

<body>
    <header>
        <nav class="header_container">
            <div class="header_item logo"><a href="/"><img src="" height="47px"></a></div>
            <div class="header_item searchBar">
                <div class="tab_menu_container">
                   <button class="tab_menu_btn" id="stayBtn"> <a href="/search/theme.do" style="color:#fff">캠핑가자</a></button>
                    <button class="tab_menu_btn" id="experienceBtn"><a href="/community/main.do"  style="color:#fff" >캠핑톡톡</a></button>
                    <button class="tab_menu_btn" id="onlineBtn">고객센터</button>
                </div>
            </div>

            <div class="header_item">
                <div class="header_dropdown"><button class="dropBtn"><img class="user_icon" src="/images/1.jpg"
                            height="30px"></button>
                    <div class="dropdown-content hidden"><a id="loginBtn">로그인</a><a id="signupBtn">회원가입</a></div>
                </div>
            </div>

            <div class="header_item BurgerBar">
                <div class="burger_menu_container">
                    <a href="#" class="burger_menu"><i class="fas fa-bars"></i></a>
                </div>
            </div>

            <div class="login hidden">
                <div class="modal_overlay"></div>
                <div class="modal_content">
                    <div class="modalTop"><button>&times</button></div>
                    <div class="modalTitle">로그인</div>
                    <form class="loginForm" action="/login" method="post">
                        <table>
                            <tr>
                                <td><input class="modalInput" type="email" placeholder="이메일" name="id" required></td>
                            </tr>
                            <tr>
                                <td><input class="modalInput" type="password" placeholder="비밀번호" name="password"
                                        required></td>
                            </tr>
                            <tr>
                                <td><input class="modalSubmit" type="submit" value="로그인"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <div class="signup hidden">
                <div class="modal_overlay"></div>
                <div class="modal_content">
                    <div class="modalTop"><button>&times</button></div>
                    <div class="modalTitle">회원가입</div>
                    <form class="signupForm" action="/signup" method="post">
                        <table>
                            <tr>
                                <td><input class="modalInput" type="email" placeholder="이메일" name="id" required></td>
                            </tr>
                            <tr>
                                <td><input class="modalInput" type="password" placeholder="비밀번호" name="password"
                                        required></td>
                            </tr>
                            <tr>
                                <td><input class="modalInput" type="text" placeholder="이름" name="name" required></td>
                            </tr>
                            <tr>
                                <td><input class="modalInput" type="text" placeholder="휴대전화 ex) 010-0000-0000"
                                        name="phone" pattern="[0-9]{3}-[0-9]{3,4}-[0-9]{4}" required></td>
                            </tr>
                            <tr>
                                <td><input class="modalSubmit" type="submit" value="회원가입"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <div class="drop_overlay hidden"></div>
        </nav>
    </header>


    <main>
        <section>
            <article class="first_section">
                <article class="first_article">
                    <div class="article_title"> <span>별 보러 가자</span></div>
                    <p class="article_content">나랑 별 보러 가지 않을래 너희 집
                        앞으로 잠깐 나올래 가볍게
                        겉옷 하나 걸치고서 나오면 돼
                        너무 멀리 가지 않을게</p>
                    <p class="article_view"><a href="#">지금 당장 떠나기 ></a></p>
                </article>
            </article>
        </section>
        <section>
            <article class="second_section">
                <article class="second_article">
                    <div class="second_title">사랑스런 댕댕이와 함께 !</div>
                    <article class="second_container">
                        <div class="second_item">
                            <a href="#">
                                <img class="item_thumb" src="/images/camping1.jpeg">
                                <div class="item_txt">
                                    <div class="item_title">경기 포천시</div>
                                    <div class="item_descript">멍쓰댕쓰 캠핑장</div>
                                </div>
                            </a>
                        </div>
                        <div class="second_item">
                            <a href="#">
                                <img class="item_thumb" src="/images/camping2.jpeg">
                                <div class="item_txt">
                                    <div class="item_title">경기 포천시</div>
                                    <div class="item_descript">멍쓰댕쓰 캠핑장</div>
                                </div>
                            </a>
                        </div>
                        <div class="second_item">
                            <a href="#">
                                <img class="item_thumb" src="/images/camping3.jpeg">
                                <div class="item_txt">
                                    <div class="item_title">경기 포천시</div>
                                    <div class="item_descript">멍쓰댕쓰 캠핑장</div>
                                </div>
                            </a>
                        </div>
                    </article>
                </article>
            </article>
            <article class="third_section">
                <article class="third_article">
                    <div class="third_title">당일치기 서울근교 여행</div>
                    <div class="thirdContainer">
                        <div class="leftItem">
                            <a href="#">
                                <img class="third_item_thumb1" src="/images/1.jpg">
                                <div class="third_txt1">
                                    <div class="thirdTitle">서울특별시</div>
                                    <div class="third_descript">도심 한복판에서 즐기는 감성 캠핑</div>
                                </div>
                            </a>
                        </div>
                        <div class="rightItem">
                            <div class="rightTop">
                                <div class="topleft">
                                    <a href="#">
                                        <img class="third_item_thumb2" src="/images/2.jpg">
                                        <div class="third_txt2">
                                            <div class="thirdTitle2">경기 가평</div>
                                            <div class="third_descript2">물놀이 가자</div>
                                        </div>
                                    </a>
                                </div>
                                <div class="topRight">
                                    <a href="#">
                                        <img class="third_item_thumb2" src="/images/3.jpg">
                                        <div class="third_txt2">
                                            <div class="thirdTitle2">인천 강화군</div>
                                            <div class="third_descript2">물놀이 가자</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="rightBottom">
                                <a href="#">
                                    <img class="third_item_thumb2" src="/images/4.jpg">
                                    <div class="third_txt2">
                                        <div class="thirdTitle2">경기 포천시</div>
                                        <div class="third_descript2">포천으로 떠나자</div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </article>
            </article>
        </section>

    </main>
    <footer>
        <div class="footer_container">
            <div class="footer_item">
                <ul>
                    <li> <img src="/images/footerlogo.png"></li>
                </ul>
            </div>
            <div class="footer_item">
                <p class="footer_txt">
                    <span class="footer_title">상호</span> 캠퍼 <span class="footer_title">대표</span> 엔지니어스 <span
                        class="footer_title">주소</span> 서울 성동구 왕십리로<br>
                    <span class="footer_title">개인정보관리 책임자</span> 관리자 (admin@gmail.com) <span class="footer_title">사업자
                        등록번호</span> 000-00-00000<br>
                </p>
            </div>
            <p class="copy">&copy;2022 CAMPER all rights reserved.</p>
        </div>
    </footer>

    <script type="module" src="/js/nav.js"></script>
    <script type="module" src="/js/header.js"></script>
</body>

</html>