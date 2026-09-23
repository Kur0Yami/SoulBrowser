.class Lcom/mycompany/app/video/VideoActivity$74;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$74;->b:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/video/VideoActivity$74;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$74;->b:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->l1()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 1

    .line 1
    iget p1, p0, Lcom/mycompany/app/video/VideoActivity$74;->a:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    rem-int/2addr p2, p1

    .line 7
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$74;->b:Lcom/mycompany/app/video/VideoActivity;

    .line 8
    .line 9
    iget v0, p1, Lcom/mycompany/app/video/VideoActivity;->I3:I

    .line 10
    .line 11
    if-ne v0, p2, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iput p2, p1, Lcom/mycompany/app/video/VideoActivity;->I3:I

    .line 15
    .line 16
    const/4 p2, -0x1

    .line 17
    iput p2, p1, Lcom/mycompany/app/video/VideoActivity;->M3:I

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoActivity;->l1()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    :goto_0
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_2
    new-instance p2, Lcom/mycompany/app/video/VideoActivity$74$1;

    .line 29
    .line 30
    invoke-direct {p2, p0}, Lcom/mycompany/app/video/VideoActivity$74$1;-><init>(Lcom/mycompany/app/video/VideoActivity$74;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    return p1
.end method
