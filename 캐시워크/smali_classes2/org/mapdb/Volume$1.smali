.class final Lorg/mapdb/Volume$1;
.super Ljava/lang/Object;
.source "Volume.java"

# interfaces
.implements Lorg/mapdb/Volume$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Volume;->fileFactory(Ljava/io/File;IZJIILjava/io/File;Ljava/io/File;ZZ)Lorg/mapdb/Volume$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$asyncWriteEnabled:Z

.field final synthetic val$chunkShift:I

.field final synthetic val$cleanerHackDisable:Z

.field final synthetic val$indexFile:Ljava/io/File;

.field final synthetic val$physFile:Ljava/io/File;

.field final synthetic val$rafMode:I

.field final synthetic val$readOnly:Z

.field final synthetic val$sizeIncrement:I

.field final synthetic val$sizeLimit:J

.field final synthetic val$transLogFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;IZJIIZZLjava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lorg/mapdb/Volume$1;->val$indexFile:Ljava/io/File;

    iput p2, p0, Lorg/mapdb/Volume$1;->val$rafMode:I

    iput-boolean p3, p0, Lorg/mapdb/Volume$1;->val$readOnly:Z

    iput-wide p4, p0, Lorg/mapdb/Volume$1;->val$sizeLimit:J

    iput p6, p0, Lorg/mapdb/Volume$1;->val$chunkShift:I

    iput p7, p0, Lorg/mapdb/Volume$1;->val$sizeIncrement:I

    iput-boolean p8, p0, Lorg/mapdb/Volume$1;->val$asyncWriteEnabled:Z

    iput-boolean p9, p0, Lorg/mapdb/Volume$1;->val$cleanerHackDisable:Z

    iput-object p10, p0, Lorg/mapdb/Volume$1;->val$physFile:Ljava/io/File;

    iput-object p11, p0, Lorg/mapdb/Volume$1;->val$transLogFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createIndexVolume()Lorg/mapdb/Volume;
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 276
    iget-object v1, p0, Lorg/mapdb/Volume$1;->val$indexFile:Ljava/io/File;

    iget v0, p0, Lorg/mapdb/Volume$1;->val$rafMode:I

    if-le v0, v2, :cond_0

    :goto_0
    iget-boolean v3, p0, Lorg/mapdb/Volume$1;->val$readOnly:Z

    iget-wide v4, p0, Lorg/mapdb/Volume$1;->val$sizeLimit:J

    iget v6, p0, Lorg/mapdb/Volume$1;->val$chunkShift:I

    iget v7, p0, Lorg/mapdb/Volume$1;->val$sizeIncrement:I

    iget-boolean v8, p0, Lorg/mapdb/Volume$1;->val$asyncWriteEnabled:Z

    iget-boolean v9, p0, Lorg/mapdb/Volume$1;->val$cleanerHackDisable:Z

    invoke-static/range {v1 .. v9}, Lorg/mapdb/Volume;->volumeForFile(Ljava/io/File;ZZJIIZZ)Lorg/mapdb/Volume;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createPhysVolume()Lorg/mapdb/Volume;
    .locals 10

    .prologue
    .line 281
    iget-object v1, p0, Lorg/mapdb/Volume$1;->val$physFile:Ljava/io/File;

    iget v0, p0, Lorg/mapdb/Volume$1;->val$rafMode:I

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-boolean v3, p0, Lorg/mapdb/Volume$1;->val$readOnly:Z

    iget-wide v4, p0, Lorg/mapdb/Volume$1;->val$sizeLimit:J

    iget v6, p0, Lorg/mapdb/Volume$1;->val$chunkShift:I

    iget v7, p0, Lorg/mapdb/Volume$1;->val$sizeIncrement:I

    iget-boolean v8, p0, Lorg/mapdb/Volume$1;->val$asyncWriteEnabled:Z

    iget-boolean v9, p0, Lorg/mapdb/Volume$1;->val$cleanerHackDisable:Z

    invoke-static/range {v1 .. v9}, Lorg/mapdb/Volume;->volumeForFile(Ljava/io/File;ZZJIIZZ)Lorg/mapdb/Volume;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createTransLogVolume()Lorg/mapdb/Volume;
    .locals 10

    .prologue
    .line 286
    iget-object v1, p0, Lorg/mapdb/Volume$1;->val$transLogFile:Ljava/io/File;

    iget v0, p0, Lorg/mapdb/Volume$1;->val$rafMode:I

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-boolean v3, p0, Lorg/mapdb/Volume$1;->val$readOnly:Z

    iget-wide v4, p0, Lorg/mapdb/Volume$1;->val$sizeLimit:J

    iget v6, p0, Lorg/mapdb/Volume$1;->val$chunkShift:I

    iget v7, p0, Lorg/mapdb/Volume$1;->val$sizeIncrement:I

    iget-boolean v8, p0, Lorg/mapdb/Volume$1;->val$asyncWriteEnabled:Z

    iget-boolean v9, p0, Lorg/mapdb/Volume$1;->val$cleanerHackDisable:Z

    invoke-static/range {v1 .. v9}, Lorg/mapdb/Volume;->volumeForFile(Ljava/io/File;ZZJIIZZ)Lorg/mapdb/Volume;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
