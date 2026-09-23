.class Lcom/mycompany/app/video/VideoActivity$60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$60;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$60;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-wide v1, v0, Lcom/mycompany/app/video/VideoActivity;->j3:J

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-wide v5, v0, Lcom/mycompany/app/video/VideoActivity;->j3:J

    .line 22
    .line 23
    sub-long/2addr v1, v5

    .line 24
    const-wide/16 v5, 0x1388

    .line 25
    .line 26
    cmp-long v1, v1, v5

    .line 27
    .line 28
    if-ltz v1, :cond_2

    .line 29
    .line 30
    iput-wide v3, v0, Lcom/mycompany/app/video/VideoActivity;->j3:J

    .line 31
    .line 32
    sget v1, Lnet/kaki87/soul2/testing/R$string;->server_delay:I

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method
