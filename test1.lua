function check_correct_answer(answer)
    if answer == nil then
        return nil, "answer not found"
    end
    if answer.responses == nil then
        return nil, "answer.responses not found"
    end
    if answer.responses[2] == nil then
        return nil, "answer.responses[2] not found"
    end
    if answer.responses[2].offerLists == nil then
        return nil, "answer.responses[2].offerLists not found"
    end
    if answer.responses[2].offerLists[1] == nil then
        return nil, "answer.responses[2].offerLists[1] not found"
    end
    if answer.responses[2].offerLists[1].offers == nil then
        return nil, "answer.responses[2].offerLists[1].offers not found"
    end
    if answer.responses[2].offerLists[1].offers[1] == nil then
        return nil, "answer.responses[2].offerLists[1].offers[1] not found"
    end
    if answer.responses[2].offerLists[1].offers[1].attributes == nil then
        return nil, "answer.responses[2].offerLists[1].offers[1].attributes not found"
    end
    local result = {}
    for i, v in ipairs(answer.responses[2].offerLists[1].offers[1].attributes) do
        if v.n ~= nil and v.v ~= nil then
            result[v.n] = v.v
        end
    end
    return result, nil
end
function prepare_normal_sql(data)
    if data == nil then
        data = {}
    end
    if data.CUSTOMERID == nil then
        data.CUSTOMERID = ""
    end
    if data.CONTACTID == nil then
        data.CONTACTID = 0
    end
    if data.IIN == nil then
        data.IIN = ""
    end
    if data.CLIENT_FIRSTNAME == nil then
        data.CLIENT_FIRSTNAME = ""
    end
    if data.CLIENT_LASTNAME == nil then
        data.CLIENT_LASTNAME = ""
    end
    if data.CLIENT_MIDDLENAME == nil then
        data.CLIENT_MIDDLENAME = ""
    end
    if data.CLIENTIDCRM == nil then
        data.CLIENTIDCRM = ""
    end
    if data.CLIENTIDCOLVIR == nil then
        data.CLIENTIDCOLVIR = ""
    end
    if data.TREATMENTCODE == nil then
        data.TREATMENTCODE = ""
    end
    if data.CAMPAIGNID == nil then
        data.CAMPAIGNID = 0
    end
    if data.OFFERID == nil then
        data.OFFERID = 0
    end
    if data.CELLID == nil then
        data.CELLID = 0
    end
    if data.CONTACTDATE == nil then
        data.CONTACTDATE = "NULL"
    else
        data.CONTACTDATE = "'"..data.CONTACTDATE.."'"
    end
    if data.EXPIRATIONDATETIME == nil then
        data.EXPIRATIONDATETIME = "NULL"
    else
        data.EXPIRATIONDATETIME = "'"..data.EXPIRATIONDATETIME.."'"
    end
    if data.EFFECTIVEDATETIME == nil then
        data.EFFECTIVEDATETIME = "NULL"
    else
        data.EFFECTIVEDATETIME = "'"..data.EFFECTIVEDATETIME.."'"
    end
    if data.PRODUCT == nil then
        data.PRODUCT = ""
    end
    if data.PRODUCTID == nil then
        data.PRODUCTID = ""
    end
    if data.CHANNEL == nil then
        data.CHANNEL = ""
    end
    if data.TELEPHONE_NUMBER == nil then
        data.TELEPHONE_NUMBER = ""
    end
    if data.SMS_TEXT == nil then
        data.SMS_TEXT = ""
    end
    if data.PRIORITY == nil then
        data.PRIORITY = ""
    end
    if data.SMS_EXPIRE == nil then
        data.SMS_EXPIRE = "NULL"
    else
        data.SMS_EXPIRE = "'"..data.SMS_EXPIRE.."'"
    end
    if data.SMS_BEGINTIME == nil then
        data.SMS_BEGINTIME = "NULL"
    else
        data.SMS_BEGINTIME = "'"..data.SMS_BEGINTIME.."'"
    end
    if data.SMS_ENDTIME == nil then
        data.SMS_ENDTIME = "NULL"
    else
        data.SMS_ENDTIME = "'"..data.SMS_ENDTIME.."'"
    end
    if data.PUSH_TOPIC == nil then
        data.PUSH_TOPIC = ""
    end
    if data.PUSH_TITLE == nil then
        data.PUSH_TITLE = ""
    end
    if data.PUSH_SYSTEM == nil then
        data.PUSH_SYSTEM = ""
    end
    if data.EMAIL_ADDRESS == nil then
        data.EMAIL_ADDRESS = ""
    end
    if data.EMAIL_SUBJECT == nil then
        data.EMAIL_SUBJECT = ""
    end
    if data.EMAIL_FROM == nil then
        data.EMAIL_FROM = ""
    end
    if data.EMAIL_FROMNAME == nil then
        data.EMAIL_FROMNAME = ""
    end
    if data.EMAIL_DRAFT_ID == nil then
        data.EMAIL_DRAFT_ID = ""
    end
    if data.CRM_CAMPAIGNCODE == nil then
        data.CRM_CAMPAIGNCODE = ""
    end
    if data.CRM_CAMPAIGN == nil then
        data.CRM_CAMPAIGN = ""
    end
    if data.CRM_COMMENT == nil then
        data.CRM_COMMENT = ""
    end
    if data.OTM_TYPE == nil then
        data.OTM_TYPE = ""
    end
    if data.OTM_IDSCRIPT == nil then
        data.OTM_IDSCRIPT = ""
    end
    if data.OTM_STARTDATE == nil then
        data.OTM_STARTDATE = "NULL"
    else
        data.OTM_STARTDATE = "'"..data.OTM_STARTDATE.."'"
    end
    if data.OTM_ENDDATE == nil then
        data.OTM_ENDDATE = "NULL"
    else
        data.OTM_ENDDATE = "'"..data.OTM_ENDDATE.."'"
    end
    if data.OTM_CATEGORY == nil then
        data.OTM_CATEGORY = ""
    end
    if data.OTM_STATUSCODE == nil then
        data.OTM_STATUSCODE = ""
    end
    if data.OTM_STATECODE == nil then
        data.OTM_STATECODE = ""
    end
    if data.OTM_TYPECODE == nil then
        data.OTM_TYPECODE = ""
    end
    if data.OTM_CAMPFREQUENCY == nil then
        data.OTM_CAMPFREQUENCY = ""
    end
    if data.OTM_CAMPPERIOD == nil then
        data.OTM_CAMPPERIOD = ""
    end
    if data.OTM_CAMPDAYREPEAT == nil then
        data.OTM_CAMPDAYREPEAT = ""
    end
    if data.OTM_PRIORITY == nil then
        data.OTM_PRIORITY = ""
    end
    if data.OTM_EVENTID == nil then
        data.OTM_EVENTID = ""
    end
    if data.OTM_PRODUCT == nil then
        data.OTM_PRODUCT = ""
    end
    if data.OTM_ENTITY == nil then
        data.OTM_ENTITY = ""
    end
    if data.OCRM_CC_TYPE == nil then
        data.OCRM_CC_TYPE = ""
    end
    if data.OCRM_CC_REGIONCALL == nil then
        data.OCRM_CC_REGIONCALL = ""
    end
    if data.OCRM_CC_REGIONCALLAMEND == nil then
        data.OCRM_CC_REGIONCALLAMEND = ""
    end
    if data.OCRM_CC_CREDAPPLECATION == nil then
        data.OCRM_CC_CREDAPPLECATION = ""
    end
    if data.OCRM_CC_CALL == nil then
        data.OCRM_CC_CALL = ""
    end
    if data.OCRM_CC_ENTITYLOGICALNAME == nil then
        data.OCRM_CC_ENTITYLOGICALNAME = ""
    end
    if data.OCRM_CC_APPLICATIONSOURCE == nil then
        data.OCRM_CC_APPLICATIONSOURCE = ""
    end
    if data.OCRM_CC_RESPPRC == nil then
        data.OCRM_CC_RESPPRC = ""
    end
    if data.OCRM_CC_HOTYPE == nil then
        data.OCRM_CC_HOTYPE = ""
    end
    if data.STATUS == nil then
        data.STATUS = ""
    end
    if data.STATUS_MSG == nil then
        data.STATUS_MSG = ""
    end
    if data.STATUS_ERR == nil then
        data.STATUS_ERR = ""
    end
    if data.SMS_ID == nil then
        data.SMS_ID = ""
    end
    if data.OCRM_CC_ID == nil then
        data.OCRM_CC_ID = ""
    end
    if data.OCRM_CC_MSG == nil then
        data.OCRM_CC_MSG = ""
    end
    if data.OTM_IDCAMP == nil then
        data.OTM_IDCAMP = ""
    end
    if data.EMAIL_TRACKID == nil then
        data.EMAIL_TRACKID = ""
    end
    if data.EMAIL_REQUESTID == nil then
        data.EMAIL_REQUESTID = ""
    end
    if data.CLIENTIDCOMPASS == nil then
        data.CLIENTIDCOMPASS = ""
    end
    if data.OCRM_CC_IPN == nil then
        data.OCRM_CC_IPN = ""
    end
    if data.PRODUCT_TYPE_ACT == nil then
        data.PRODUCT_TYPE_ACT = ""
    end
    if data.PRODUCT_TYPE == nil then
        data.PRODUCT_TYPE = ""
    end
    if data.OTM_IDGROUP == nil then
        data.OTM_IDGROUP = ""
    end
    if data.CAMPAIGNNAME == nil then
        data.CAMPAIGNNAME = ""
    end
    if data.TEXT_RU == nil then
        data.TEXT_RU = ""
    end
    if data.TEXT_EN == nil then
        data.TEXT_EN = ""
    end
    if data.TEXT_KK == nil then
        data.TEXT_KK = ""
    end
    if data.PUSH_TEXT_RU == nil then
        data.PUSH_TEXT_RU = ""
    end
    if data.PUSH_TEXT_EN == nil then
        data.PUSH_TEXT_EN = ""
    end
    if data.PUSH_TEXT_KK == nil then
        data.PUSH_TEXT_KK = ""
    end
    if data.TITLE_TEXT_RU == nil then
        data.TITLE_TEXT_RU = ""
    end
    if data.TITLE_TEXT_EN == nil then
        data.TITLE_TEXT_EN = ""
    end
    if data.TITLE_TEXT_KK == nil then
        data.TITLE_TEXT_KK = ""
    end
    if data.IMAGE_URL == nil then
        data.IMAGE_URL = ""
    end
    if data.EXTERNAL_LINK_TITLE_1 == nil then
        data.EXTERNAL_LINK_TITLE_1 = ""
    end
    if data.EXTERNAL_LINK_URL_1 == nil then
        data.EXTERNAL_LINK_URL_1 = ""
    end
    if data.EXTERNAL_LINK_TITLE_2 == nil then
        data.EXTERNAL_LINK_TITLE_2 = ""
    end
    if data.EXTERNAL_LINK_URL_2 == nil then
        data.EXTERNAL_LINK_URL_2 = ""
    end
    if data.EXTERNAL_LINK_TITLE_3 == nil then
        data.EXTERNAL_LINK_TITLE_3 = ""
    end
    if data.EXTERNAL_LINK_URL_3 == nil then
        data.EXTERNAL_LINK_URL_3 = ""
    end
    if data.INTERNAL_LINK == nil then
        data.INTERNAL_LINK = ""
    end
    if data.ACTION_LINK_TITLE_1 == nil then
        data.ACTION_LINK_TITLE_1 = ""
    end
    if data.ACTION_LINK_URL_1 == nil then
        data.ACTION_LINK_URL_1 = ""
    end
    if data.ACTION_LINK_TITLE_2 == nil then
        data.ACTION_LINK_TITLE_2 = ""
    end
    if data.ACTION_LINK_URL_2 == nil then
        data.ACTION_LINK_URL_2 = ""
    end
    if data.ACTION_LINK_TITLE_3 == nil then
        data.ACTION_LINK_TITLE_3 = ""
    end
    if data.ACTION_LINK_URL_3 == nil then
        data.ACTION_LINK_URL_3 = ""
    end
    if data.IS_VISIBLE == nil then
        data.IS_VISIBLE = 0
    end
    if data.IS_SMS_ENABLED == nil then
        data.IS_SMS_ENABLED = 0
    end
    if data.AVAILABLE == nil then
        data.AVAILABLE = ""
    end
    if data.BUTTON_RU == nil then
        data.BUTTON_RU = ""
    end
    if data.BUTTON_KK == nil then
        data.BUTTON_KK = ""
    end
    if data.BUTTON_EN == nil then
        data.BUTTON_EN = ""
    end
    if data.LINK == nil then
        data.LINK = ""
    end
    if data.NAVIGATION == nil then
        data.NAVIGATION = ""
    end
    if data.TIMER == nil then
        data.TIMER = "NULL"
    else
        data.TIMER = "'"..data.TIMER.."'"
    end
    if data.EXPIREDON == nil then
        data.EXPIREDON = "NULL"
    else
        data.EXPIREDON = "'"..data.EXPIREDON.."'"
    end
    if data.TITLE_RU == nil then
        data.TITLE_RU = ""
    end
    if data.TITLE_KK == nil then
        data.TITLE_KK = ""
    end
    if data.TITLE_EN == nil then
        data.TITLE_EN = ""
    end
    if data.NOTIFICATION_TEXT_RU == nil then
        data.NOTIFICATION_TEXT_RU = ""
    end
    if data.NOTIFICATION_TEXT_KK == nil then
        data.NOTIFICATION_TEXT_KK = ""
    end
    if data.NOTIFICATION_TEXT_EN == nil then
        data.NOTIFICATION_TEXT_EN = ""
    end
    if data.IS_PUSH_ENABLED == nil then
        data.IS_PUSH_ENABLED = 0
    end
    if data.CATEGORY_ID == nil then
        data.CATEGORY_ID = ""
    end
    if data.TRANSACTION_DD == nil then
        data.TRANSACTION_DD = ""
    end
    return string.format("INSERT INTO UAC.FB_OUTPUT_INTERACT (CUSTOMERID, CONTACTID, IIN, CLIENT_FIRSTNAME, CLIENT_LASTNAME, CLIENT_MIDDLENAME,CLIENTIDCRM, CLIENTIDCOLVIR, TREATMENTCODE, CAMPAIGNID, OFFERID, CELLID,CONTACTDATE, EXPIRATIONDATETIME, EFFECTIVEDATETIME, PRODUCT, PRODUCTID, CHANNEL,TELEPHONE_NUMBER, SMS_TEXT, PRIORITY, SMS_EXPIRE, SMS_BEGINTIME, SMS_ENDTIME,PUSH_TOPIC, PUSH_TITLE, PUSH_SYSTEM, EMAIL_ADDRESS, EMAIL_SUBJECT, EMAIL_FROM,EMAIL_FROMNAME, EMAIL_DRAFT_ID, CRM_CAMPAIGNCODE, CRM_CAMPAIGN, CRM_COMMENT,OTM_TYPE, OTM_IDSCRIPT, OTM_STARTDATE, OTM_ENDDATE, OTM_CATEGORY, OTM_STATUSCODE,OTM_STATECODE, OTM_TYPECODE, OTM_CAMPFREQUENCY, OTM_CAMPPERIOD, OTM_CAMPDAYREPEAT,OTM_PRIORITY, OTM_EVENTID, OTM_PRODUCT, OTM_ENTITY, OCRM_CC_TYPE,OCRM_CC_REGIONCALL, OCRM_CC_REGIONCALLAMEND, OCRM_CC_CREDAPPLECATION, OCRM_CC_CALL,OCRM_CC_ENTITYLOGICALNAME, OCRM_CC_APPLICATIONSOURCE, OCRM_CC_RESPPRC,OCRM_CC_HOTYPE, STATUS, STATUS_MSG, STATUS_ERR, SMS_ID, OCRM_CC_ID, OCRM_CC_MSG,OTM_IDCAMP, EMAIL_TRACKID, EMAIL_REQUESTID, CLIENTIDCOMPASS, OCRM_CC_IPN,PRODUCT_TYPE_ACT, PRODUCT_TYPE, OTM_IDGROUP, CAMPAIGNNAME, TEXT_RU, TEXT_EN,TEXT_KK, PUSH_TEXT_RU, PUSH_TEXT_EN, PUSH_TEXT_KK, TITLE_TEXT_RU, TITLE_TEXT_EN,TITLE_TEXT_KK, IMAGE_URL, EXTERNAL_LINK_TITLE_1, EXTERNAL_LINK_URL_1,EXTERNAL_LINK_TITLE_2, EXTERNAL_LINK_URL_2, EXTERNAL_LINK_TITLE_3,EXTERNAL_LINK_URL_3, INTERNAL_LINK, ACTION_LINK_TITLE_1, ACTION_LINK_URL_1,ACTION_LINK_TITLE_2, ACTION_LINK_URL_2, ACTION_LINK_TITLE_3, ACTION_LINK_URL_3,IS_VISIBLE, IS_SMS_ENABLED, AVAILABLE, BUTTON_RU, BUTTON_KK, BUTTON_EN, LINK,NAVIGATION, TIMER, EXPIREDON, TITLE_RU, TITLE_KK, TITLE_EN, NOTIFICATION_TEXT_RU,NOTIFICATION_TEXT_KK, NOTIFICATION_TEXT_EN, IS_PUSH_ENABLED, CATEGORY_ID,TRANSACTION_DD) VALUES ('%s', %d, '%s', '%s', '%s', '%s', '%s', '%s', '%s', %d, %d, %d, %s, %s, %s, '%s', '%s', '%s', '%s', '%s', '%s', %s, %s, %s, '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', %s, %s, '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', %d, %d, '%s', '%s', '%s', '%s', '%s', '%s', %s, %s, '%s', '%s', '%s', '%s', '%s', '%s', %d, '%s', '%s')",
            data.CUSTOMERID,
            data.CONTACTID,
            data.IIN,
            data.CLIENT_FIRSTNAME,
            data.CLIENT_LASTNAME,
            data.CLIENT_MIDDLENAME,
            data.CLIENTIDCRM,
            data.CLIENTIDCOLVIR,
            data.TREATMENTCODE,
            data.CAMPAIGNID,
            data.OFFERID,
            data.CELLID,
            data.CONTACTDATE,
            data.EXPIRATIONDATETIME,
            data.EFFECTIVEDATETIME,
            data.PRODUCT,
            data.PRODUCTID,
            data.CHANNEL,
            data.TELEPHONE_NUMBER,
            data.SMS_TEXT,
            data.PRIORITY,
            data.SMS_EXPIRE,
            data.SMS_BEGINTIME,
            data.SMS_ENDTIME,
            data.PUSH_TOPIC,
            data.PUSH_TITLE,
            data.PUSH_SYSTEM,
            data.EMAIL_ADDRESS,
            data.EMAIL_SUBJECT,
            data.EMAIL_FROM,
            data.EMAIL_FROMNAME,
            data.EMAIL_DRAFT_ID,
            data.CRM_CAMPAIGNCODE,
            data.CRM_CAMPAIGN,
            data.CRM_COMMENT,
            data.OTM_TYPE,
            data.OTM_IDSCRIPT,
            data.OTM_STARTDATE,
            data.OTM_ENDDATE,
            data.OTM_CATEGORY,
            data.OTM_STATUSCODE,
            data.OTM_STATECODE,
            data.OTM_TYPECODE,
            data.OTM_CAMPFREQUENCY,
            data.OTM_CAMPPERIOD,
            data.OTM_CAMPDAYREPEAT,
            data.OTM_PRIORITY,
            data.OTM_EVENTID,
            data.OTM_PRODUCT,
            data.OTM_ENTITY,
            data.OCRM_CC_TYPE,
            data.OCRM_CC_REGIONCALL,
            data.OCRM_CC_REGIONCALLAMEND,
            data.OCRM_CC_CREDAPPLECATION,
            data.OCRM_CC_CALL,
            data.OCRM_CC_ENTITYLOGICALNAME,
            data.OCRM_CC_APPLICATIONSOURCE,
            data.OCRM_CC_RESPPRC,
            data.OCRM_CC_HOTYPE,
            data.STATUS,
            data.STATUS_MSG,
            data.STATUS_ERR,
            data.SMS_ID,
            data.OCRM_CC_ID,
            data.OCRM_CC_MSG,
            data.OTM_IDCAMP,
            data.EMAIL_TRACKID,
            data.EMAIL_REQUESTID,
            data.CLIENTIDCOMPASS,
            data.OCRM_CC_IPN,
            data.PRODUCT_TYPE_ACT,
            data.PRODUCT_TYPE,
            data.OTM_IDGROUP,
            data.CAMPAIGNNAME,
            data.TEXT_RU,
            data.TEXT_EN,
            data.TEXT_KK,
            data.PUSH_TEXT_RU,
            data.PUSH_TEXT_EN,
            data.PUSH_TEXT_KK,
            data.TITLE_TEXT_RU,
            data.TITLE_TEXT_EN,
            data.TITLE_TEXT_KK,
            data.IMAGE_URL,
            data.EXTERNAL_LINK_TITLE_1,
            data.EXTERNAL_LINK_URL_1,
            data.EXTERNAL_LINK_TITLE_2,
            data.EXTERNAL_LINK_URL_2,
            data.EXTERNAL_LINK_TITLE_3,
            data.EXTERNAL_LINK_URL_3,
            data.INTERNAL_LINK,
            data.ACTION_LINK_TITLE_1,
            data.ACTION_LINK_URL_1,
            data.ACTION_LINK_TITLE_2,
            data.ACTION_LINK_URL_2,
            data.ACTION_LINK_TITLE_3,
            data.ACTION_LINK_URL_3,
            data.IS_VISIBLE,
            data.IS_SMS_ENABLED,
            data.AVAILABLE,
            data.BUTTON_RU,
            data.BUTTON_KK,
            data.BUTTON_EN,
            data.LINK,
            data.NAVIGATION,
            data.TIMER,
            data.EXPIREDON,
            data.TITLE_RU,
            data.TITLE_KK,
            data.TITLE_EN,
            data.NOTIFICATION_TEXT_RU,
            data.NOTIFICATION_TEXT_KK,
            data.NOTIFICATION_TEXT_EN,
            data.IS_PUSH_ENABLED,
            data.CATEGORY_ID,
            data.TRANSACTION_DD)
end
function InCorrectAnswer(inData, outData, err)

end
--- @type sql
local sql = require("sql")

---@type http
local http = require("http")

---@type json
local json = require("json")

---@type concurrency_sql
local concurrency_sql = require("concurrency_sql")
---@type interact
local interact = require("interact")

local cdn = os.getenv("CONNECTION_STRING") or "HOSTNAME=10.0.80.247;DATABASE=cm;PORT=50000;UID=db2inst1;PWD=Forte2019prime"
cdn =  "HOSTNAME=10.0.80.247;DATABASE=cm;PORT=50000;UID=db2inst1;PWD=Prime2019forte"

local concurrencySql, errOpen = concurrency_sql.new(cdn)

if errOpen ~= nil then
    print(errOpen)
    os.exit(2, false)
end

local cutomerIdErr, _ = json.encode({ err = "cutomerId key not found"})
local icErr, _ = json.encode({ err = "ic key not found"})
local ipErr, _ = json.encode({ err = "ip key not found"})



http.HandleFunc("/", function(w, r)
    w.HeaderSet("Content-Type","application/json")
    local body, err = r.Body()
    if err ~= nil then
        local res, _ = json.encode({ err = err})
        InCorrectAnswer(res, "", "")
        w.Write(res)
        return
    end
    local jsoned, err = json.decode(body)
    if err ~= nil then
        local res, _ = json.encode({ err = err})
        InCorrectAnswer(res, body, "")
        w.Write(res)
        return
    end
    if jsoned.cutomerId == nil then
        InCorrectAnswer(cutomerIdErr, body, "")
        w.Write(cutomerIdErr)
        return
    end
    if jsoned.ic == nil then
        InCorrectAnswer(icErr, body, "")
        w.Write(icErr)
        return
    end
    if jsoned.ip == nil then
        InCorrectAnswer(ipErr, body, "")
        w.Write(ipErr)
        return
    end
    local interactBody =  interact.
    new().
    SetInteractiveChannel(jsoned.ic).
    SetAudienceLevel("Customer").
    SetInteractivePoint(jsoned.ip).
    AddAudienceID("CUSTOMERID", jsoned.cutomerId, "numeric")
    local data, err =interactBody.
    Send("http://10.0.80.245:7001/interact/servlet/RestServlet")

    if err ~= nil then
        local res, _ = json.encode({ err = err})
        check_correct_answer(res, body, "")
        w.Write(res)
        return
    end
    local answer, err =  json.decode(data)
    if err ~= nil then
        w.Write(json.encode({ err = err}))
        return
    end
    local answerInCorrectAnswer, errInCorrectAnswer = in_correct_answer(answer)
    if errInCorrectAnswer ~= nil then
        w.Write(json.encode({ err = errInCorrectAnswer}))
        return
    end
    local res, _ = json.encode(answerInCorrectAnswer)
    w.HeaderSet("Content-Type","application/json")
    w.Write(prepare_normal_sql(answerInCorrectAnswer))
end)

http.HandleFunc("/shut_down", function(w, r)
    local str = concurrencySql.Close()
    local res, _ = json.encode({ database_close_error = str })
    w.HeaderSet("Content-Type","application/json")
    w.Write(res)
    concurrencySql.Shutdown()
end)

http.ListenAndServe(2000)
