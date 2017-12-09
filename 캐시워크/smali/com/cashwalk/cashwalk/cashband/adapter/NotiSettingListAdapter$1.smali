.class Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$1;
.super Ljava/lang/Object;
.source "NotiSettingListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->setList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cashwalk/cashwalk/model/InstallAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$1;->this$0:Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cashwalk/cashwalk/model/InstallAppInfo;Lcom/cashwalk/cashwalk/model/InstallAppInfo;)I
    .locals 2
    .param p1, "t1"    # Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    .param p2, "t2"    # Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    .prologue
    .line 49
    iget-object v0, p1, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    check-cast p2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter$1;->compare(Lcom/cashwalk/cashwalk/model/InstallAppInfo;Lcom/cashwalk/cashwalk/model/InstallAppInfo;)I

    move-result v0

    return v0
.end method
