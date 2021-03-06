.class public final Lcom/amazonaws/services/s3/util/Mimetypes;
.super Ljava/lang/Object;
.source "Mimetypes.java"


# static fields
.field public static final MIMETYPE_GZIP:Ljava/lang/String; = "application/x-gzip"

.field public static final MIMETYPE_HTML:Ljava/lang/String; = "text/html"

.field public static final MIMETYPE_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final MIMETYPE_XML:Ljava/lang/String; = "application/xml"

.field private static final log:Lorg/apache/commons/logging/Log;

.field private static mimetypes:Lcom/amazonaws/services/s3/util/Mimetypes;


# instance fields
.field private final extensionToMimetypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/amazonaws/services/s3/util/Mimetypes;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/amazonaws/services/s3/util/Mimetypes;->mimetypes:Lcom/amazonaws/services/s3/util/Mimetypes;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "3gp"

    const-string/jumbo v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ai"

    const-string v2, "application/postscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "aif"

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "aifc"

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "aiff"

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "asc"

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "atom"

    const-string v2, "application/atom+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "au"

    const-string v2, "audio/basic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "avi"

    const-string/jumbo v2, "video/x-msvideo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "bcpio"

    const-string v2, "application/x-bcpio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "bin"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "bmp"

    const-string v2, "image/bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "cdf"

    const-string v2, "application/x-netcdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "cgm"

    const-string v2, "image/cgm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "class"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "cpio"

    const-string v2, "application/x-cpio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "cpt"

    const-string v2, "application/mac-compactpro"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "csh"

    const-string v2, "application/x-csh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "css"

    const-string/jumbo v2, "text/css"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "dcr"

    const-string v2, "application/x-director"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "dif"

    const-string/jumbo v2, "video/x-dv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "dir"

    const-string v2, "application/x-director"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "djv"

    const-string v2, "image/vnd.djvu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "djvu"

    const-string v2, "image/vnd.djvu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "dll"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "dmg"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "dms"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "doc"

    const-string v2, "application/msword"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "dtd"

    const-string v2, "application/xml-dtd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "dv"

    const-string/jumbo v2, "video/x-dv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "dvi"

    const-string v2, "application/x-dvi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "dxr"

    const-string v2, "application/x-director"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "eps"

    const-string v2, "application/postscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "etx"

    const-string/jumbo v2, "text/x-setext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "exe"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ez"

    const-string v2, "application/andrew-inset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "flv"

    const-string/jumbo v2, "video/x-flv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "gif"

    const-string v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "gram"

    const-string v2, "application/srgs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "grxml"

    const-string v2, "application/srgs+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "gtar"

    const-string v2, "application/x-gtar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "gz"

    const-string v2, "application/x-gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "hdf"

    const-string v2, "application/x-hdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "hqx"

    const-string v2, "application/mac-binhex40"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "htm"

    const-string/jumbo v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "html"

    const-string/jumbo v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ice"

    const-string/jumbo v2, "x-conference/x-cooltalk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ico"

    const-string v2, "image/x-icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ics"

    const-string/jumbo v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ief"

    const-string v2, "image/ief"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ifb"

    const-string/jumbo v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "iges"

    const-string v2, "model/iges"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "igs"

    const-string v2, "model/iges"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "jnlp"

    const-string v2, "application/x-java-jnlp-file"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "jp2"

    const-string v2, "image/jp2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "jpe"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "jpeg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "js"

    const-string v2, "application/x-javascript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "kar"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "latex"

    const-string v2, "application/x-latex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "lha"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "lzh"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "m3u"

    const-string v2, "audio/x-mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "m4a"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "m4p"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "m4u"

    const-string/jumbo v2, "video/vnd.mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "m4v"

    const-string/jumbo v2, "video/x-m4v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mac"

    const-string v2, "image/x-macpaint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "man"

    const-string v2, "application/x-troff-man"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mathml"

    const-string v2, "application/mathml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "me"

    const-string v2, "application/x-troff-me"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mesh"

    const-string v2, "model/mesh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mid"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "midi"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mif"

    const-string v2, "application/vnd.mif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mov"

    const-string/jumbo v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "movie"

    const-string/jumbo v2, "video/x-sgi-movie"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mp2"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mp3"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mp4"

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mpe"

    const-string/jumbo v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mpeg"

    const-string/jumbo v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mpg"

    const-string/jumbo v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mpga"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ms"

    const-string v2, "application/x-troff-ms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "msh"

    const-string v2, "model/mesh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "mxu"

    const-string/jumbo v2, "video/vnd.mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "nc"

    const-string v2, "application/x-netcdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "oda"

    const-string v2, "application/oda"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ogg"

    const-string v2, "application/ogg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ogv"

    const-string/jumbo v2, "video/ogv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "pbm"

    const-string v2, "image/x-portable-bitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "pct"

    const-string v2, "image/pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "pdb"

    const-string v2, "chemical/x-pdb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "pdf"

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "pgm"

    const-string v2, "image/x-portable-graymap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "pgn"

    const-string v2, "application/x-chess-pgn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "pic"

    const-string v2, "image/pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "pict"

    const-string v2, "image/pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "pnm"

    const-string v2, "image/x-portable-anymap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "pnt"

    const-string v2, "image/x-macpaint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "pntg"

    const-string v2, "image/x-macpaint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ppm"

    const-string v2, "image/x-portable-pixmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ppt"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ps"

    const-string v2, "application/postscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "qt"

    const-string/jumbo v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "qti"

    const-string v2, "image/x-quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "qtif"

    const-string v2, "image/x-quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ra"

    const-string v2, "audio/x-pn-realaudio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ram"

    const-string v2, "audio/x-pn-realaudio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "ras"

    const-string v2, "image/x-cmu-raster"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "rdf"

    const-string v2, "application/rdf+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "rgb"

    const-string v2, "image/x-rgb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "rm"

    const-string v2, "application/vnd.rn-realmedia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "roff"

    const-string v2, "application/x-troff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "rtf"

    const-string/jumbo v2, "text/rtf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "rtx"

    const-string/jumbo v2, "text/richtext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "sgm"

    const-string/jumbo v2, "text/sgml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "sgml"

    const-string/jumbo v2, "text/sgml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "sh"

    const-string v2, "application/x-sh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "shar"

    const-string v2, "application/x-shar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "silo"

    const-string v2, "model/mesh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "sit"

    const-string v2, "application/x-stuffit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "skd"

    const-string v2, "application/x-koan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "skm"

    const-string v2, "application/x-koan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "skp"

    const-string v2, "application/x-koan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "skt"

    const-string v2, "application/x-koan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "smi"

    const-string v2, "application/smil"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "smil"

    const-string v2, "application/smil"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "snd"

    const-string v2, "audio/basic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "so"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "spl"

    const-string v2, "application/x-futuresplash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string v1, "src"

    const-string v2, "application/x-wais-source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sv4cpio"

    const-string v2, "application/x-sv4cpio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sv4crc"

    const-string v2, "application/x-sv4crc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "svg"

    const-string v2, "image/svg+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "swf"

    const-string v2, "application/x-shockwave-flash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "t"

    const-string v2, "application/x-troff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tar"

    const-string v2, "application/x-tar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tcl"

    const-string v2, "application/x-tcl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tex"

    const-string v2, "application/x-tex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "texi"

    const-string v2, "application/x-texinfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "texinfo"

    const-string v2, "application/x-texinfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tif"

    const-string v2, "image/tiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tiff"

    const-string v2, "image/tiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tr"

    const-string v2, "application/x-troff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tsv"

    const-string/jumbo v2, "text/tab-separated-values"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "txt"

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ustar"

    const-string v2, "application/x-ustar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vcd"

    const-string v2, "application/x-cdlink"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vrml"

    const-string v2, "model/vrml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vxml"

    const-string v2, "application/voicexml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wav"

    const-string v2, "audio/x-wav"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wbmp"

    const-string v2, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wbxml"

    const-string v2, "application/vnd.wap.wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "webm"

    const-string/jumbo v2, "video/webm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wml"

    const-string/jumbo v2, "text/vnd.wap.wml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wmlc"

    const-string v2, "application/vnd.wap.wmlc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wmls"

    const-string/jumbo v2, "text/vnd.wap.wmlscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wmlsc"

    const-string v2, "application/vnd.wap.wmlscriptc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wmv"

    const-string/jumbo v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "wrl"

    const-string v2, "model/vrml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xbm"

    const-string v2, "image/x-xbitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xht"

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xhtml"

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xls"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xml"

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xpm"

    const-string v2, "image/x-xpixmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xsl"

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xslt"

    const-string v2, "application/xslt+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xul"

    const-string v2, "application/vnd.mozilla.xul+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xwd"

    const-string v2, "image/x-xwindowdump"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "xyz"

    const-string v2, "chemical/x-xyz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "zip"

    const-string v2, "application/zip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazonaws/services/s3/util/Mimetypes;
    .locals 7

    .prologue
    .line 267
    const-class v3, Lcom/amazonaws/services/s3/util/Mimetypes;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/amazonaws/services/s3/util/Mimetypes;->mimetypes:Lcom/amazonaws/services/s3/util/Mimetypes;

    if-eqz v2, :cond_0

    .line 268
    sget-object v2, Lcom/amazonaws/services/s3/util/Mimetypes;->mimetypes:Lcom/amazonaws/services/s3/util/Mimetypes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    monitor-exit v3

    return-object v2

    .line 270
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    new-instance v2, Lcom/amazonaws/services/s3/util/Mimetypes;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/util/Mimetypes;-><init>()V

    sput-object v2, Lcom/amazonaws/services/s3/util/Mimetypes;->mimetypes:Lcom/amazonaws/services/s3/util/Mimetypes;

    .line 271
    sget-object v2, Lcom/amazonaws/services/s3/util/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    sget-object v2, Lcom/amazonaws/services/s3/util/Mimetypes;->mimetypes:Lcom/amazonaws/services/s3/util/Mimetypes;

    iget-object v1, v2, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    .line 273
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    .local v0, "extension":Ljava/lang/String;
    sget-object v5, Lcom/amazonaws/services/s3/util/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting mime type for extension \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\' to \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 275
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-interface {v5, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 267
    .end local v0    # "extension":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 278
    :cond_1
    :try_start_2
    sget-object v2, Lcom/amazonaws/services/s3/util/Mimetypes;->mimetypes:Lcom/amazonaws/services/s3/util/Mimetypes;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getMimetype(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 381
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimetype(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 340
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 341
    .local v1, "lastPeriodIndex":I
    if-lez v1, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 342
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "ext":Ljava/lang/String;
    iget-object v3, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    iget-object v3, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 345
    .local v2, "mimetype":Ljava/lang/String;
    sget-object v3, Lcom/amazonaws/services/s3/util/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    sget-object v3, Lcom/amazonaws/services/s3/util/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recognised extension \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', mimetype is: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 361
    .end local v0    # "ext":Ljava/lang/String;
    .end local v2    # "mimetype":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 350
    .restart local v0    # "ext":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/amazonaws/services/s3/util/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    sget-object v3, Lcom/amazonaws/services/s3/util/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extension \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is unrecognized in mime type listing, using default mime type: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "application/octet-stream"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 361
    .end local v0    # "ext":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v2, "application/octet-stream"

    goto :goto_0

    .line 356
    :cond_3
    sget-object v3, Lcom/amazonaws/services/s3/util/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 357
    sget-object v3, Lcom/amazonaws/services/s3/util/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File name has no extension, mime type cannot be recognised for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public loadAndReplaceMimetypes(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 292
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 294
    .local v2, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 295
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 297
    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, " \t"

    invoke-direct {v4, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 302
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "mimetype":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 304
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "extension":Ljava/lang/String;
    iget-object v5, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v5, Lcom/amazonaws/services/s3/util/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 307
    sget-object v5, Lcom/amazonaws/services/s3/util/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting mime type for extension \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 308
    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' to \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 307
    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 313
    .end local v1    # "extension":Ljava/lang/String;
    .end local v3    # "mimetype":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/amazonaws/services/s3/util/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    sget-object v5, Lcom/amazonaws/services/s3/util/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring mimetype with no associated file extensions: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 320
    .end local v4    # "st":Ljava/util/StringTokenizer;
    :cond_3
    return-void
.end method

.method public registerMimetype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/amazonaws/services/s3/util/Mimetypes;->extensionToMimetypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    return-void
.end method
