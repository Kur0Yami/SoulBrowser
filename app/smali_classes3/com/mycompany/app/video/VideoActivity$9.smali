.class Lcom/mycompany/app/video/VideoActivity$9;
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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$9;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$9;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->N1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$10;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lcom/mycompany/app/video/VideoActivity$10;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/web/WebVideoProgress;->i(ILcom/mycompany/app/web/WebVideoProgress$WebVidProgListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->O1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebVideoProgress;->i(ILcom/mycompany/app/web/WebVideoProgress$WebVidProgListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->P1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 25
    .line 26
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$11;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lcom/mycompany/app/video/VideoActivity$11;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebVideoProgress;->i(ILcom/mycompany/app/web/WebVideoProgress$WebVidProgListener;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
