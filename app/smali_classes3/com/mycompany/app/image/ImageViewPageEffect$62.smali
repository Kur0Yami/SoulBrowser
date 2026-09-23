.class Lcom/mycompany/app/image/ImageViewPageEffect$62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageTransView$ImageTransListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewPageEffect;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$62;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$62;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->e0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->P0()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 15
    .line 16
    sget v1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->N0()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_2
    iget v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {v0, v1, v2, v3}, Lcom/mycompany/app/image/ImageViewPageEffect;->U(Lcom/mycompany/app/image/ImageViewPageEffect;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$62;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->e0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->P0()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 15
    .line 16
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    if-eqz p1, :cond_2

    .line 23
    .line 24
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->F:Z

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-static {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->W(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->N0()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect;->b0(Lcom/mycompany/app/image/ImageViewPageEffect;Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$62;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->X(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$62;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect;->Z(Lcom/mycompany/app/image/ImageViewPageEffect;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$62;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect;->a0(Lcom/mycompany/app/image/ImageViewPageEffect;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
