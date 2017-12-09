.class public Lcom/amazonaws/event/ProgressEvent;
.super Ljava/lang/Object;
.source "ProgressEvent.java"


# static fields
.field public static final CANCELED_EVENT_CODE:I = 0x10

.field public static final COMPLETED_EVENT_CODE:I = 0x4

.field public static final FAILED_EVENT_CODE:I = 0x8

.field public static final PART_COMPLETED_EVENT_CODE:I = 0x800

.field public static final PART_FAILED_EVENT_CODE:I = 0x1000

.field public static final PART_STARTED_EVENT_CODE:I = 0x400

.field public static final PREPARING_EVENT_CODE:I = 0x1

.field public static final RESET_EVENT_CODE:I = 0x20

.field public static final STARTED_EVENT_CODE:I = 0x2


# instance fields
.field protected bytesTransferred:J

.field protected eventCode:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "eventCode"    # I
    .param p2, "bytesTransferred"    # J

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/amazonaws/event/ProgressEvent;->eventCode:I

    .line 57
    iput-wide p2, p0, Lcom/amazonaws/event/ProgressEvent;->bytesTransferred:J

    .line 58
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "bytesTransferred"    # J

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lcom/amazonaws/event/ProgressEvent;->bytesTransferred:J

    .line 53
    return-void
.end method


# virtual methods
.method public getBytesTransferred()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/amazonaws/event/ProgressEvent;->bytesTransferred:J

    return-wide v0
.end method

.method public getEventCode()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/amazonaws/event/ProgressEvent;->eventCode:I

    return v0
.end method

.method public setBytesTransferred(J)V
    .locals 1
    .param p1, "bytesTransferred"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/amazonaws/event/ProgressEvent;->bytesTransferred:J

    .line 68
    return-void
.end method

.method public setEventCode(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/amazonaws/event/ProgressEvent;->eventCode:I

    .line 99
    return-void
.end method
