.class final Lorg/mapdb/Fun$6;
.super Ljava/lang/Object;
.source "Fun.java"

# interfaces
.implements Lorg/mapdb/Fun$Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Fun;->extractNoTransform()Lorg/mapdb/Fun$Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/Fun$Function1",
        "<TK;TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 718
    .local p1, "k":Ljava/lang/Object;, "TK;"
    return-object p1
.end method
