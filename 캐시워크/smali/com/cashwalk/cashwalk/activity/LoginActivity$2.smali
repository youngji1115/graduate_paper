.class Lcom/cashwalk/cashwalk/activity/LoginActivity$2;
.super Lcom/kakao/usermgmt/callback/LogoutResponseCallback;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-direct {p0}, Lcom/kakao/usermgmt/callback/LogoutResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleteLogout()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method
