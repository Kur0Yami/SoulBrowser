.class Lcom/mycompany/app/quick/QuickSchEdit$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/QuickView$QuickViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickSchEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSchEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSchEdit$3;->a:Lcom/mycompany/app/quick/QuickSchEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSchEdit$3;->a:Lcom/mycompany/app/quick/QuickSchEdit;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/quick/QuickSchEdit;->b(Lcom/mycompany/app/quick/QuickSchEdit;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()Lcom/mycompany/app/view/MyWebBody;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSchEdit$3;->a:Lcom/mycompany/app/quick/QuickSchEdit;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSchEdit;->h:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

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
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->f()Lcom/mycompany/app/view/MyWebBody;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final g(FFI)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final h()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final i(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSchEdit$3;->a:Lcom/mycompany/app/quick/QuickSchEdit;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSchEdit;->h:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->i(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSchEdit$3;->a:Lcom/mycompany/app/quick/QuickSchEdit;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSchEdit;->h:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->j()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 0

    .line 1
    return-void
.end method

.method public final l()V
    .locals 0

    .line 1
    return-void
.end method

.method public final m(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSchEdit$3;->a:Lcom/mycompany/app/quick/QuickSchEdit;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSchEdit;->h:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->m(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final o(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSchEdit$3;->a:Lcom/mycompany/app/quick/QuickSchEdit;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSchEdit;->h:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->o(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final p(IIILjava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final q()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final r()V
    .locals 0

    .line 1
    return-void
.end method

.method public final s(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final t(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final u()V
    .locals 0

    .line 1
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSchEdit$3;->a:Lcom/mycompany/app/quick/QuickSchEdit;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSchEdit;->h:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->v()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 0

    .line 1
    return-void
.end method

.method public final x()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final y()V
    .locals 0

    .line 1
    return-void
.end method
