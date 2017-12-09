.class public Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$NewsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "LockScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .line 1099
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 1100
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1139
    const/16 v0, 0x8

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1105
    const/4 v0, 0x0

    .line 1107
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    packed-switch p1, :pswitch_data_0

    .line 1134
    :goto_0
    return-object v0

    .line 1109
    :pswitch_0
    const-string v1, "TOTAL"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1110
    goto :goto_0

    .line 1112
    :pswitch_1
    const-string v1, "LIFE"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1113
    goto :goto_0

    .line 1115
    :pswitch_2
    const-string v1, "ECONOMY"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1116
    goto :goto_0

    .line 1118
    :pswitch_3
    const-string v1, "POLITICS"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1119
    goto :goto_0

    .line 1121
    :pswitch_4
    const-string v1, "SOCIETY"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1122
    goto :goto_0

    .line 1124
    :pswitch_5
    const-string v1, "IT"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1125
    goto :goto_0

    .line 1127
    :pswitch_6
    const-string v1, "GLOBAL"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1128
    goto :goto_0

    .line 1130
    :pswitch_7
    const-string v1, "ENTERTAINMENT"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    goto :goto_0

    .line 1107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1144
    const/4 v0, 0x0

    .line 1145
    .local v0, "title":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1172
    :goto_0
    return-object v0

    .line 1147
    :pswitch_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const v2, 0x7f0901c3

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1148
    goto :goto_0

    .line 1150
    :pswitch_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const v2, 0x7f0901c0

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1151
    goto :goto_0

    .line 1153
    :pswitch_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const v2, 0x7f0901bc

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1154
    goto :goto_0

    .line 1156
    :pswitch_3
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const v2, 0x7f0901c1

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1157
    goto :goto_0

    .line 1159
    :pswitch_4
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const v2, 0x7f0901c2

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1160
    goto :goto_0

    .line 1162
    :pswitch_5
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const v2, 0x7f0901bf

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1163
    goto :goto_0

    .line 1165
    :pswitch_6
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const v2, 0x7f0901be

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1166
    goto :goto_0

    .line 1168
    :pswitch_7
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const v2, 0x7f0901bd

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
