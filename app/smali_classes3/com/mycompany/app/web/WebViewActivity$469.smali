.class Lcom/mycompany/app/web/WebViewActivity$469;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/QuickView$QuickViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$469;->a:Lcom/mycompany/app/web/WebViewActivity;

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
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$469;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

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
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$469;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 4
    .line 5
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
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$469;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/mycompany/app/web/WebViewActivity;->d8(IZ)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    const/4 v1, -0x1

    .line 14
    invoke-static {v0, p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->B1(Lcom/mycompany/app/web/WebViewActivity;ZI)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$469;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->p4()V

    .line 6
    .line 7
    .line 8
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
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$469;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->y1(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$469;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->x1(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/quick/QuickAdapter$QuickItem;I)V

    .line 4
    .line 5
    .line 6
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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$469;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lcom/mycompany/app/quick/QuickView;->v(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->A3:Lcom/mycompany/app/quick/QuickSearch;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickSearch;->n()V

    .line 20
    .line 21
    .line 22
    :cond_1
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
