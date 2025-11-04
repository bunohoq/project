## Spring Framework 기반 회원제 프로젝트

Spring Framework의 주요 기능(MVC, Security, MyBatis, Tiles)을 통합하여 구현한 회원 관리 및 기본 기능 프로젝트입니다.

### 📍 주요 기술 스택

-   **Backend**: Java, Spring Framework (MVC, Security), MyBatis
-   **Frontend**: JSP, JSTL
-   **Database**: Oracle
-   **Build**: Maven
-   **Template Engine**: Apache Tiles
-   **Server**: Apache Tomcat

---

### 🚀 기능 구현 명세

#### 1. MyBatis (인터페이스 매퍼 방식)

-   **설정 파일**: `root-context.xml`
-   **단위 테스트**: `MemberMapperTests.java`

-   `root-context.xml`에 DataSource(HikariCP) 및 SqlSessionFactory 설정 완료.
-   `log4jdbc`를 연동하여 쿼리 실행 로그 추적 가능.
-   `mybatis-spring:scan`을 통해 Mapper 인터페이스 방식 구현.
-   `MemberMapperTests.java`로 MyBatis 연동 및 Mapper 메소드 정상 동작 단위 테스트 완료.

#### 2. Tiles (레이아웃 관리)

-   **설정 파일**: `servlet-context.xml`, `tiles.xml`

-   `servlet-context.xml`에 `TilesConfigurer` 및 `UrlBasedViewResolver` 설정.
-   `tiles.xml`에 공통 레이아웃(`main.jsp`) 및 조각 페이지(header, content) 정의.
-   `*.*` 패턴을 사용하여 `Controller`가 반환하는 문자열(예: `"member.login"`)을 기반으로 뷰를 동적으로 조합함.

#### 3. Spring Security (인증 및 인가)

-   **설정 파일**: `web.xml`, `security-context.xml`

-   `web.xml`에 `DelegatingFilterProxy`를 등록하여 Security 기능 활성화.
-   `security-context.xml`에서 인증/인가 규칙 설정.
-   비밀번호 암호화에 `BCryptPasswordEncoder` 사용.
-   `CustomUserDetailsService`를 구현하여 DB 기반의 사용자 인증 처리.
-   `CustomLoginSuccessHandler` 및 `CustomAccessDeniedHandler`를 구현하여 로그인 성공 및 접근 거부 시의 로직 커스터마이징.

#### 4. FileUpload (파일 업로드)

-   **설정 파일**: `web.xml`

-   `web.xml`의 `DispatcherServlet` 설정 내에 `<multipart-config>` 태그를 사용하여 파일 업로드 기능 활성화.
-   최대 파일 크기 및 요청 크기, 임시 저장 경로 등 설정 완료.

---

### 🏃 실행 방법

1.  **DB 설정**
    -   `script.sql` 파일을 실행하여 테이블 및 기본 데이터 생성.
    -   `root-context.xml`의 `dataSource` 빈에 명시된 DB 계정 정보(username, password)가 실제 DB와 일치하는지 확인.

2.  **프로젝트 빌드**
    -   IDE(Eclipse, STS 등)에서 Maven Project로 Import.
    -   Maven Dependencies 업데이트 실행.

3.  **서버 실행**
    -   Apache Tomcat 서버에 프로젝트를 추가하고 실행.
