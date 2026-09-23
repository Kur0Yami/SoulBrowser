.class Lcom/mycompany/app/video/VideoActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebVideoProgress$WebVidProgListener;


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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$11;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$11;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->f()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    int-to-float p1, p1

    .line 9
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 10
    .line 11
    div-float/2addr p1, v2

    .line 12
    mul-float/2addr p1, v1

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->k2:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->F2:Z

    .line 23
    .line 24
    iput p1, v0, Lcom/mycompany/app/video/VideoActivity;->E2:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {v0, p1}, Lcom/mycompany/app/video/VideoActivity;->L0(Lcom/mycompany/app/video/VideoActivity;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
