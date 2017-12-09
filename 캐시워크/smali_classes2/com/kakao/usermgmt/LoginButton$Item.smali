.class Lcom/kakao/usermgmt/LoginButton$Item;
.super Ljava/lang/Object;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/usermgmt/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field public final authType:Lcom/kakao/auth/AuthType;

.field public final contentDescId:I

.field public final icon:I

.field public final textId:I


# direct methods
.method public constructor <init>(ILjava/lang/Integer;ILcom/kakao/auth/AuthType;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "icon"    # Ljava/lang/Integer;
    .param p3, "contentDescId"    # I
    .param p4, "authType"    # Lcom/kakao/auth/AuthType;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Lcom/kakao/usermgmt/LoginButton$Item;->textId:I

    .line 170
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kakao/usermgmt/LoginButton$Item;->icon:I

    .line 171
    iput p3, p0, Lcom/kakao/usermgmt/LoginButton$Item;->contentDescId:I

    .line 172
    iput-object p4, p0, Lcom/kakao/usermgmt/LoginButton$Item;->authType:Lcom/kakao/auth/AuthType;

    .line 173
    return-void
.end method
