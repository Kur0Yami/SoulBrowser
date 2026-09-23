.class Lcom/mycompany/app/web/WebViewActivity$70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyWebCoord$MyTouchListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$70;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(FFI)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$70;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Q9:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->M2:Lcom/mycompany/app/pull/MyPullView;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    :goto_0
    return v2

    .line 14
    :cond_1
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->K9:I

    .line 15
    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/mycompany/app/pull/MyPullView;->e()V

    .line 19
    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->y()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->M2:Lcom/mycompany/app/pull/MyPullView;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/mycompany/app/pull/MyPullView;->e()V

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->M2:Lcom/mycompany/app/pull/MyPullView;

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/pull/MyPullView;->f(FFI)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method
