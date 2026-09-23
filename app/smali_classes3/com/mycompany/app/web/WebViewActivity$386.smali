.class Lcom/mycompany/app/web/WebViewActivity$386;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$386;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$386;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget p1, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 10
    .line 11
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->n4()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    invoke-static {v1, v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->g1(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
