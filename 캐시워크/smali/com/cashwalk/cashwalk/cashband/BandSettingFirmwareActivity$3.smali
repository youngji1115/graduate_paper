.class Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$3;
.super Ljava/lang/Object;
.source "BandSettingFirmwareActivity.java"

# interfaces
.implements Landroid/text/util/Linkify$TransformFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->setRequireUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "match"    # Ljava/util/regex/Matcher;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, ""

    return-object v0
.end method
