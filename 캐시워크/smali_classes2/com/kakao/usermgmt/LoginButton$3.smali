.class Lcom/kakao/usermgmt/LoginButton$3;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/usermgmt/LoginButton;->onClickLoginButton(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/usermgmt/LoginButton;

.field final synthetic val$items:[Lcom/kakao/usermgmt/LoginButton$Item;


# direct methods
.method constructor <init>(Lcom/kakao/usermgmt/LoginButton;[Lcom/kakao/usermgmt/LoginButton$Item;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kakao/usermgmt/LoginButton;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kakao/usermgmt/LoginButton$3;->this$0:Lcom/kakao/usermgmt/LoginButton;

    iput-object p2, p0, Lcom/kakao/usermgmt/LoginButton$3;->val$items:[Lcom/kakao/usermgmt/LoginButton$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 152
    iget-object v1, p0, Lcom/kakao/usermgmt/LoginButton$3;->val$items:[Lcom/kakao/usermgmt/LoginButton$Item;

    aget-object v1, v1, p2

    iget-object v0, v1, Lcom/kakao/usermgmt/LoginButton$Item;->authType:Lcom/kakao/auth/AuthType;

    .line 153
    .local v0, "authType":Lcom/kakao/auth/AuthType;
    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v2

    iget-object v1, p0, Lcom/kakao/usermgmt/LoginButton$3;->this$0:Lcom/kakao/usermgmt/LoginButton;

    invoke-virtual {v1}, Lcom/kakao/usermgmt/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v0, v1}, Lcom/kakao/auth/Session;->open(Lcom/kakao/auth/AuthType;Landroid/app/Activity;)V

    .line 157
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 158
    return-void
.end method
