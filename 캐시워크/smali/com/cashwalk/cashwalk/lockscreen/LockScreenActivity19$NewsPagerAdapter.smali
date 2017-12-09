.class public Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$NewsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "LockScreenActivity19.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .line 1114
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 1115
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1154
    const/16 v0, 0x8

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1120
    const/4 v0, 0x0

    .line 1122
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    packed-switch p1, :pswitch_data_0

    .line 1149
    :goto_0
    return-object v0

    .line 1124
    :pswitch_0
    const-string v1, "TOTAL"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1125
    goto :goto_0

    .line 1127
    :pswitch_1
    const-string v1, "LIFE"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1128
    goto :goto_0

    .line 1130
    :pswitch_2
    const-string v1, "ECONOMY"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1131
    goto :goto_0

    .line 1133
    :pswitch_3
    const-string v1, "POLITICS"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1134
    goto :goto_0

    .line 1136
    :pswitch_4
    const-string v1, "SOCIETY"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1137
    goto :goto_0

    .line 1139
    :pswitch_5
    const-string v1, "IT"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1140
    goto :goto_0

    .line 1142
    :pswitch_6
    const-string v1, "GLOBAL"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    .line 1143
    goto :goto_0

    .line 1145
    :pswitch_7
    const-string v1, "ENTERTAINMENT"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->newInstance(Ljava/lang/String;)Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    move-result-object v0

    goto :goto_0

    .line 1122
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
    .line 1159
    const/4 v0, 0x0

    .line 1160
    .local v0, "title":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1187
    :goto_0
    return-object v0

    .line 1162
    :pswitch_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const v2, 0x7f0901c3

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1163
    goto :goto_0

    .line 1165
    :pswitch_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const v2, 0x7f0901c0

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1166
    goto :goto_0

    .line 1168
    :pswitch_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const v2, 0x7f0901bc

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1169
    goto :goto_0

    .line 1171
    :pswitch_3
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const v2, 0x7f0901c1

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1172
    goto :goto_0

    .line 1174
    :pswitch_4
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const v2, 0x7f0901c2

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1175
    goto :goto_0

    .line 1177
    :pswitch_5
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const v2, 0x7f0901bf

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1178
    goto :goto_0

    .line 1180
    :pswitch_6
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const v2, 0x7f0901be

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1181
    goto :goto_0

    .line 1183
    :pswitch_7
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$NewsPagerAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const v2, 0x7f0901bd

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1160
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
