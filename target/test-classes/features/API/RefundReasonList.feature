Feature: As an administrator, I want to access the Refund & Reason List through the API connection.

  Scenario: When a GET request with valid authorization information is sent to the /api/refundReasonList endpoint, the
  returned status code should be verified as 200, and the message in the response body should be verified as "success".

    * The api user constructs the base url with the "admin" token.
    # APi kullanicisi "admin" token ile base urli olusturur
    * The api user sets "api/refundReasonList" path parameters
    # APi kullanicisi "api/refundReasonList" path parametrelerini olusturur
    * The API user sends a GET request and records the response from the api refundReasonList endpoint.
    # Api kullanicisi get request gonderir ve api refundReasonList endpointinden donen responsei kaydeder
    * The api user verifies that the status code is 200
    # Api kullanicisi status codeun 200 oldugunu dogrular
    * The api user verifies that the message information in the response body is "success"
    # Api kullanicisi response bodydeki message bilgisinin "success" oldugunu dogrular


  Scenario Outline: When a GET request containing valid authorization information is sent to the /api/refundReasonList endpoint,
  the returned information in the response body for the reason with ID 'x' should be validated.

    * The api user constructs the base url with the "admin" token.
    # APi kullanicisi "admin" token ile base urli olusturur
    * The api user sets "api/refundReasonList" path parameters
    # APi kullanicisi "api/refundReasonList" path parametrelerini olusturur
    * The API user sends a GET request and records the response from the api refundReasonList endpoint.
    # Api kullanicisi get request gonderir ve api refundReasonList endpointinden donen responsei kaydeder
    * The api user validates the "<reason>" of the response body with index <dataIndex>.
    # API kullanıcısi response body icindeki <dataIndex> indexe sahip olanin "<reason>" bilgisini doğrular.

    Examples:
      | dataIndex | reason              |
      | 0         | Product mismatch    |
      | 2         | Order wrong product |


  Scenario: When a GET request with invalid authorization information is sent to the /api/refundReasonList endpoint, it
  should be verified that the returned status code is 401, and the message in the response body is "Unauthenticated.".

    * The api user constructs the base url with the "invalid" token.
    # APi kullanicisi "invalid" token ile base urli olusturur
    * The api user sets "api/refundReasonList" path parameters
    * The API user records the response from the api refundReasonList endpoint, confirming that the status code is '401' and the reason phrase is Unauthorized.
    # Api kullanicisi api refundReasonList endpointinden donen responsei kaydeder status code '401' ve reason phrase Unauthorized oldugunu dogrular

