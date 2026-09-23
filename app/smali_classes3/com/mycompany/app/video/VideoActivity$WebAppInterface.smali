.class Lcom/mycompany/app/video/VideoActivity$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/video/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$WebAppInterface;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onYouLoaded(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$WebAppInterface;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lcom/mycompany/app/video/VideoActivity;->F0(Lcom/mycompany/app/video/VideoActivity;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget p1, v0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    .line 20
    iput v1, v0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 21
    .line 22
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->w3:Z

    .line 23
    .line 24
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$37;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lcom/mycompany/app/video/VideoActivity$37;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v2, 0x64

    .line 35
    .line 36
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onYouPaused(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$WebAppInterface;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    iput p1, v0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    iput p1, v0, Lcom/mycompany/app/video/VideoActivity;->v3:I

    .line 17
    .line 18
    :goto_0
    iget-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$WebAppInterface$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$WebAppInterface$1;-><init>(Lcom/mycompany/app/video/VideoActivity$WebAppInterface;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
