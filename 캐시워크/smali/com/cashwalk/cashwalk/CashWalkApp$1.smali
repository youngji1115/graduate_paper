.class Lcom/cashwalk/cashwalk/CashWalkApp$1;
.super Ljava/lang/Object;
.source "CashWalkApp.java"

# interfaces
.implements Lcom/onesignal/OneSignal$IdsAvailableHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/CashWalkApp;->initOneSignal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/CashWalkApp;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/CashWalkApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/CashWalkApp;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/cashwalk/cashwalk/CashWalkApp$1;->this$0:Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public idsAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p2, :cond_0

    .line 124
    sput-object p1, Lcom/cashwalk/cashwalk/CashWalkApp;->PLAYER_ID:Ljava/lang/String;

    .line 126
    :cond_0
    return-void
.end method
