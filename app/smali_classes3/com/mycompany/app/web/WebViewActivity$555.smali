.class Lcom/mycompany/app/web/WebViewActivity$555;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$555;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Copied URL"

    .line 2
    .line 3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$555;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    invoke-static {v1, v2, v0, p1}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b(Ljava/lang/String;JZ)V
    .locals 0

    .line 1
    sget p2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$555;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/mycompany/app/web/WebViewActivity;->l4()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/mycompany/app/web/WebViewActivity;->G4()V

    .line 9
    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    const/4 p4, 0x0

    .line 13
    invoke-virtual {p2, p1, p3, p4}, Lcom/mycompany/app/web/WebViewActivity;->B3(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$555;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ln:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->l4()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G4()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, v1, p2}, Lcom/mycompany/app/web/WebViewActivity;->c9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$555;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ln:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->l4()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G4()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->m8(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$555;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->l4()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->m6:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Lcom/mycompany/app/dialog/DialogUrlLink;->G(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
