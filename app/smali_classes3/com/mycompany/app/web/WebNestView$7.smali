.class Lcom/mycompany/app/web/WebNestView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/QuickView$QuickViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebNestView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-interface {v1}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final c(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->c(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final e(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->e(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final f()Lcom/mycompany/app/view/MyWebBody;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->f()Lcom/mycompany/app/view/MyWebBody;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final g(FFI)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->u:Lcom/mycompany/app/web/WebNestView$WebViewListener;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    invoke-interface {v1}, Lcom/mycompany/app/web/WebNestView$WebViewListener;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return v2

    .line 16
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->u:Lcom/mycompany/app/web/WebNestView$WebViewListener;

    .line 17
    .line 18
    invoke-interface {v0, p1, p2, p3}, Lcom/mycompany/app/web/WebNestView$WebViewListener;->g(FFI)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public final h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->h()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final i(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->i(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->j()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->k()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->l()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final m(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->m(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->n(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final o(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->o(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final p(IIILjava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move v6, p5

    .line 12
    invoke-interface/range {v1 .. v6}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->p(IIILjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->q()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->r()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final s(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->s(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final t(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->t(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->u()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->v()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->w()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->x()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$7;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->v:Lcom/mycompany/app/web/WebNestView$WebQuickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/web/WebNestView$WebQuickListener;->y()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
