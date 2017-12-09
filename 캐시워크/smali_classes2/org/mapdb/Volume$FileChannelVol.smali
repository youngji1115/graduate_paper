.class public final Lorg/mapdb/Volume$FileChannelVol;
.super Lorg/mapdb/Volume;
.source "Volume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Volume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileChannelVol"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected channel:Ljava/nio/channels/FileChannel;

.field protected final chunkSize:I

.field protected final file:Ljava/io/File;

.field protected final growLock:Ljava/lang/Object;

.field protected final hasLimit:Z

.field protected raf:Ljava/io/RandomAccessFile;

.field protected final readOnly:Z

.field protected volatile size:J

.field protected final sizeLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 781
    const-class v0, Lorg/mapdb/Volume;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/Volume$FileChannelVol;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;ZJII)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "readOnly"    # Z
    .param p3, "sizeLimit"    # J
    .param p5, "chunkShift"    # I
    .param p6, "sizeIncrement"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 794
    invoke-direct {p0}, Lorg/mapdb/Volume;-><init>()V

    .line 792
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->growLock:Ljava/lang/Object;

    .line 795
    iput-object p1, p0, Lorg/mapdb/Volume$FileChannelVol;->file:Ljava/io/File;

    .line 796
    iput-boolean p2, p0, Lorg/mapdb/Volume$FileChannelVol;->readOnly:Z

    .line 797
    iput-wide p3, p0, Lorg/mapdb/Volume$FileChannelVol;->sizeLimit:J

    .line 798
    cmp-long v1, p3, v4

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/mapdb/Volume$FileChannelVol;->hasLimit:Z

    .line 799
    shl-int v1, v2, p5

    iput v1, p0, Lorg/mapdb/Volume$FileChannelVol;->chunkSize:I

    .line 801
    :try_start_0
    invoke-static {p1, p2}, Lorg/mapdb/Volume$FileChannelVol;->checkFolder(Ljava/io/File;Z)V

    .line 802
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 803
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->raf:Ljava/io/RandomAccessFile;

    .line 804
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->channel:Ljava/nio/channels/FileChannel;

    .line 805
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/mapdb/Volume$FileChannelVol;->size:J

    .line 814
    :goto_1
    return-void

    .line 798
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 807
    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_2

    const-string v1, "r"

    :goto_2
    invoke-direct {v2, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/mapdb/Volume$FileChannelVol;->raf:Ljava/io/RandomAccessFile;

    .line 808
    iget-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->channel:Ljava/nio/channels/FileChannel;

    .line 809
    iget-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mapdb/Volume$FileChannelVol;->size:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 807
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    const-string v1, "rw"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected static checkFolder(Ljava/io/File;Z)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 818
    .local v0, "parent":Ljava/io/File;
    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 821
    :cond_0
    if-nez v0, :cond_1

    .line 822
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent folder could not be determined for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 824
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    .line 825
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent folder does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 826
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_4

    .line 827
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent folder is not readable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 828
    :cond_4
    if-nez p1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_5

    .line 829
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent folder is not writable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 830
    :cond_5
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1018
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/mapdb/Volume$FileChannelVol;->closed:Z

    .line 1019
    iget-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    .line 1020
    iget-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 1021
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->channel:Ljava/nio/channels/FileChannel;

    .line 1022
    iget-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 1023
    iget-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1024
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->raf:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    return-void

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteFile()V
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lorg/mapdb/Volume$FileChannelVol;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1051
    return-void
.end method

.method public getByte(J)B
    .locals 3
    .param p1, "offset"    # J

    .prologue
    .line 996
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 997
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/Volume$FileChannelVol;->readFully(JLjava/nio/ByteBuffer;)V

    .line 998
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 999
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 1000
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic getDataInput(JI)Ljava/io/DataInput;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # I

    .prologue
    .line 781
    invoke-virtual {p0, p1, p2, p3}, Lorg/mapdb/Volume$FileChannelVol;->getDataInput(JI)Lorg/mapdb/DataInput2;

    move-result-object v0

    return-object v0
.end method

.method public getDataInput(JI)Lorg/mapdb/DataInput2;
    .locals 5
    .param p1, "offset"    # J
    .param p3, "size"    # I

    .prologue
    .line 1007
    :try_start_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1008
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/Volume$FileChannelVol;->readFully(JLjava/nio/ByteBuffer;)V

    .line 1009
    new-instance v2, Lorg/mapdb/DataInput2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/mapdb/DataInput2;-><init>(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1010
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 1011
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lorg/mapdb/Volume$FileChannelVol;->file:Ljava/io/File;

    return-object v0
.end method

.method public getInt(J)I
    .locals 3
    .param p1, "offset"    # J

    .prologue
    .line 984
    const/4 v2, 0x4

    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 985
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/Volume$FileChannelVol;->readFully(JLjava/nio/ByteBuffer;)V

    .line 986
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 987
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 988
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getLong(J)J
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 973
    const/16 v2, 0x8

    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 974
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/Volume$FileChannelVol;->readFully(JLjava/nio/ByteBuffer;)V

    .line 975
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getLong(I)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 976
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 977
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getSixLong(J)J
    .locals 9
    .param p1, "offset"    # J

    .prologue
    const/4 v7, 0x0

    .line 955
    const/4 v2, 0x6

    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 956
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/Volume$FileChannelVol;->readFully(JLjava/nio/ByteBuffer;)V

    .line 957
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    return-wide v2

    .line 964
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 965
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    .line 1042
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSliced()Z
    .locals 1

    .prologue
    .line 1055
    const/4 v0, 0x0

    return v0
.end method

.method public putByte(JB)V
    .locals 3
    .param p1, "offset"    # J
    .param p3, "value"    # B

    .prologue
    .line 916
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 917
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 918
    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/Volume$FileChannelVol;->writeFully(JLjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    return-void

    .line 919
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 920
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public putData(JLjava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "offset"    # J
    .param p3, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 937
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/mapdb/Volume$FileChannelVol;->writeFully(JLjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    return-void

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putData(J[BII)V
    .locals 3
    .param p1, "offset"    # J
    .param p3, "src"    # [B
    .param p4, "srcPos"    # I
    .param p5, "srcSize"    # I

    .prologue
    .line 927
    :try_start_0
    invoke-static {p3, p4, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 928
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/Volume$FileChannelVol;->writeFully(JLjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    return-void

    .line 929
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 930
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public putInt(JI)V
    .locals 3
    .param p1, "offset"    # J
    .param p3, "value"    # I

    .prologue
    .line 905
    const/4 v2, 0x4

    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 906
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 907
    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/Volume$FileChannelVol;->writeFully(JLjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    return-void

    .line 908
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 909
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public putLong(JJ)V
    .locals 3
    .param p1, "offset"    # J
    .param p3, "value"    # J

    .prologue
    .line 894
    const/16 v2, 0x8

    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 895
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3, p4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 896
    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/Volume$FileChannelVol;->writeFully(JLjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    return-void

    .line 897
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 898
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final putSixLong(JJ)V
    .locals 9
    .param p1, "offset"    # J
    .param p3, "value"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0xff

    .line 873
    sget-boolean v2, Lorg/mapdb/Volume$FileChannelVol;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    cmp-long v2, p3, v4

    if-ltz v2, :cond_0

    const/16 v2, 0x30

    ushr-long v2, p3, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "value does not fit"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 877
    :cond_1
    const/4 v2, 0x6

    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 878
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    const/16 v3, 0x28

    shr-long v4, p3, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 879
    const/4 v2, 0x1

    const/16 v3, 0x20

    shr-long v4, p3, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 880
    const/4 v2, 0x2

    const/16 v3, 0x18

    shr-long v4, p3, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 881
    const/4 v2, 0x3

    const/16 v3, 0x10

    shr-long v4, p3, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 882
    const/4 v2, 0x4

    const/16 v3, 0x8

    shr-long v4, p3, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 883
    const/4 v2, 0x5

    shr-long v4, p3, v8

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 885
    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/Volume$FileChannelVol;->writeFully(JLjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    return-void

    .line 886
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 887
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected readFully(JLjava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "offset"    # J
    .param p3, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 944
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int v1, v2, v3

    .line 945
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_1

    .line 946
    iget-object v2, p0, Lorg/mapdb/Volume$FileChannelVol;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, p3, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    .line 947
    .local v0, "read":I
    if-gez v0, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 948
    :cond_0
    sub-int/2addr v1, v0

    .line 949
    goto :goto_0

    .line 950
    .end local v0    # "read":I
    :cond_1
    return-void
.end method

.method public sync()V
    .locals 3

    .prologue
    .line 1033
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->channel:Ljava/nio/channels/FileChannel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    return-void

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public truncate(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 851
    iget-object v2, p0, Lorg/mapdb/Volume$FileChannelVol;->growLock:Ljava/lang/Object;

    monitor-enter v2

    .line 853
    :try_start_0
    iput-wide p1, p0, Lorg/mapdb/Volume$FileChannelVol;->size:J

    .line 854
    iget-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :try_start_1
    monitor-exit v2

    .line 860
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 858
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public tryAvailable(J)Z
    .locals 7
    .param p1, "offset"    # J

    .prologue
    .line 834
    iget-boolean v1, p0, Lorg/mapdb/Volume$FileChannelVol;->hasLimit:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/mapdb/Volume$FileChannelVol;->sizeLimit:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 846
    :goto_0
    return v1

    .line 835
    :cond_0
    iget v1, p0, Lorg/mapdb/Volume$FileChannelVol;->chunkSize:I

    int-to-long v2, v1

    rem-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 836
    iget v1, p0, Lorg/mapdb/Volume$FileChannelVol;->chunkSize:I

    int-to-long v2, v1

    iget v1, p0, Lorg/mapdb/Volume$FileChannelVol;->chunkSize:I

    int-to-long v4, v1

    rem-long v4, p1, v4

    sub-long/2addr v2, v4

    add-long/2addr p1, v2

    .line 838
    :cond_1
    iget-wide v2, p0, Lorg/mapdb/Volume$FileChannelVol;->size:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_2

    iget-object v2, p0, Lorg/mapdb/Volume$FileChannelVol;->growLock:Ljava/lang/Object;

    monitor-enter v2

    .line 840
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/Volume$FileChannelVol;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 841
    iput-wide p1, p0, Lorg/mapdb/Volume$FileChannelVol;->size:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    :try_start_1
    monitor-exit v2

    .line 846
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 845
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected writeFully(JLjava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "offset"    # J
    .param p3, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 863
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int v0, v2, v3

    .line 864
    .local v0, "remaining":I
    :goto_0
    if-lez v0, :cond_1

    .line 865
    iget-object v2, p0, Lorg/mapdb/Volume$FileChannelVol;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, p3, p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    .line 866
    .local v1, "write":I
    if-gez v1, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 867
    :cond_0
    sub-int/2addr v0, v1

    .line 868
    goto :goto_0

    .line 869
    .end local v1    # "write":I
    :cond_1
    return-void
.end method
