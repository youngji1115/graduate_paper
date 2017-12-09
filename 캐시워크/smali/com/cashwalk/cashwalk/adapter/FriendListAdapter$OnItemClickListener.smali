.class public interface abstract Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;
.super Ljava/lang/Object;
.source "FriendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemClickListener"
.end annotation


# virtual methods
.method public abstract onItemAdd(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
.end method

.method public abstract onItemAddReceiveFriend(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
.end method

.method public abstract onItemCancelRequest(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
.end method

.method public abstract onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/Friend;)V
.end method
