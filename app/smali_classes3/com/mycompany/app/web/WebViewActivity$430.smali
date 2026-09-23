.class Lcom/mycompany/app/web/WebViewActivity$430;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$430;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$430;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v1, 0x7

    .line 6
    if-eq p1, v1, :cond_skip_dismiss

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-eq p1, v1, :cond_skip_dismiss

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->K4()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->R3()V

    .line 16
    .line 17
    .line 18
    :cond_skip_dismiss
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/web/WebViewActivity;->g6(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$430;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->K4()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->R3()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->v1(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$430;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-wide v4, p4

    .line 8
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/web/WebViewActivity;->L0(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$430;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->K4()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->R3()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string v3, "file:///android_asset/shortcut.html"

    .line 16
    .line 17
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iput-boolean v3, p1, Lcom/mycompany/app/web/WebNestView;->a1:Z

    .line 22
    .line 23
    new-instance v4, Lcom/mycompany/app/web/WebNestFrame;

    .line 24
    .line 25
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebNestFrame;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v3}, Lcom/mycompany/app/web/WebNestFrame;->E(Z)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v4, p1, v3, v3}, Lcom/mycompany/app/web/WebNestFrame;->k(Lcom/mycompany/app/web/WebNestView;II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v4, p2, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->F1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {v0, v2, p2, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->F1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$430;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->K4()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->R3()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->d7:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->r9(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$430;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->K4()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->R3()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->d7:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->z3(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
