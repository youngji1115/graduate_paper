.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;
.super Ljava/lang/Object;
.source "TransferTable.java"


# static fields
.field public static final COLUMN_BUCKET_NAME:Ljava/lang/String; = "bucket_name"

.field public static final COLUMN_BYTES_CURRENT:Ljava/lang/String; = "bytes_current"

.field public static final COLUMN_BYTES_TOTAL:Ljava/lang/String; = "bytes_total"

.field public static final COLUMN_CANNED_ACL:Ljava/lang/String; = "canned_acl"

.field public static final COLUMN_CONTENT_MD5:Ljava/lang/String; = "content_md5"

.field public static final COLUMN_DATA_RANGE_LAST:Ljava/lang/String; = "range_last"

.field public static final COLUMN_DATA_RANGE_START:Ljava/lang/String; = "range_start"

.field public static final COLUMN_ETAG:Ljava/lang/String; = "etag"

.field public static final COLUMN_EXPIRATION_TIME_RULE_ID:Ljava/lang/String; = "expiration_time_rule_id"

.field public static final COLUMN_FILE:Ljava/lang/String; = "file"

.field public static final COLUMN_FILE_OFFSET:Ljava/lang/String; = "file_offset"

.field public static final COLUMN_HEADER_CACHE_CONTROL:Ljava/lang/String; = "header_cache_control"

.field public static final COLUMN_HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "header_content_disposition"

.field public static final COLUMN_HEADER_CONTENT_ENCODING:Ljava/lang/String; = "header_content_encoding"

.field public static final COLUMN_HEADER_CONTENT_LANGUAGE:Ljava/lang/String; = "header_content_language"

.field public static final COLUMN_HEADER_CONTENT_TYPE:Ljava/lang/String; = "header_content_type"

.field public static final COLUMN_HEADER_EXPIRE:Ljava/lang/String; = "header_expire"

.field public static final COLUMN_HTTP_EXPIRES_DATE:Ljava/lang/String; = "http_expires_date"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_IS_ENCRYPTED:Ljava/lang/String; = "is_encrypted"

.field public static final COLUMN_IS_LAST_PART:Ljava/lang/String; = "is_last_part"

.field public static final COLUMN_IS_MULTIPART:Ljava/lang/String; = "is_multipart"

.field public static final COLUMN_IS_REQUESTER_PAYS:Ljava/lang/String; = "is_requester_pays"

.field public static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_MAIN_UPLOAD_ID:Ljava/lang/String; = "main_upload_id"

.field public static final COLUMN_MULTIPART_ID:Ljava/lang/String; = "multipart_id"

.field public static final COLUMN_PART_NUM:Ljava/lang/String; = "part_num"

.field public static final COLUMN_SPEED:Ljava/lang/String; = "speed"

.field public static final COLUMN_SSE_ALGORITHM:Ljava/lang/String; = "sse_algorithm"

.field public static final COLUMN_SSE_KMS_KEY:Ljava/lang/String; = "kms_key"

.field public static final COLUMN_STATE:Ljava/lang/String; = "state"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_USER_METADATA:Ljava/lang/String; = "user_metadata"

.field public static final COLUMN_VERSION_ID:Ljava/lang/String; = "version_id"

.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table awstransfer(_id integer primary key autoincrement, main_upload_id integer, type text not null, state text not null, bucket_name text not null, key text not null, version_id text, bytes_total bigint, bytes_current bigint, speed bigint, is_requester_pays integer, is_encrypted integer, file text not null, file_offset bigint, is_multipart int, part_num int not null, is_last_part integer, multipart_id text, etag text, range_start bigint, range_last bigint, header_content_type text, header_content_language text, header_content_disposition text, header_content_encoding text, header_cache_control text, header_expire text);"

.field public static final TABLE_TRANSFER:Ljava/lang/String; = "awstransfer"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addVersion2Columns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 269
    const-string v4, "ALTER TABLE awstransfer ADD COLUMN user_metadata text;"

    .line 271
    .local v4, "addUserMetadata":Ljava/lang/String;
    const-string v1, "ALTER TABLE awstransfer ADD COLUMN expiration_time_rule_id text;"

    .line 273
    .local v1, "addExpirationTimeRuleId":Ljava/lang/String;
    const-string v2, "ALTER TABLE awstransfer ADD COLUMN http_expires_date text;"

    .line 275
    .local v2, "addHttpExpires":Ljava/lang/String;
    const-string v3, "ALTER TABLE awstransfer ADD COLUMN sse_algorithm text;"

    .line 277
    .local v3, "addSSEAlgorithm":Ljava/lang/String;
    const-string v0, "ALTER TABLE awstransfer ADD COLUMN content_md5 text;"

    .line 279
    .local v0, "addContentMD5":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method private static addVersion3Columns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 290
    const-string v0, "ALTER TABLE awstransfer ADD COLUMN kms_key text;"

    .line 292
    .local v0, "addKMSKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method private static addVersion4Columns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 299
    const-string v0, "ALTER TABLE awstransfer ADD COLUMN canned_acl text;"

    .line 301
    .local v0, "addCannedAcl":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "version"    # I

    .prologue
    .line 240
    const-string v0, "create table awstransfer(_id integer primary key autoincrement, main_upload_id integer, type text not null, state text not null, bucket_name text not null, key text not null, version_id text, bytes_total bigint, bytes_current bigint, speed bigint, is_requester_pays integer, is_encrypted integer, file text not null, file_offset bigint, is_multipart int, part_num int not null, is_last_part integer, multipart_id text, etag text, range_start bigint, range_last bigint, header_content_type text, header_content_language text, header_content_disposition text, header_content_encoding text, header_cache_control text, header_expire text);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 242
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 254
    if-ge p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 255
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->addVersion2Columns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 257
    :cond_0
    if-ge p1, v1, :cond_1

    if-lt p2, v1, :cond_1

    .line 258
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->addVersion3Columns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 260
    :cond_1
    if-ge p1, v2, :cond_2

    if-lt p2, v2, :cond_2

    .line 261
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->addVersion4Columns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 263
    :cond_2
    return-void
.end method
