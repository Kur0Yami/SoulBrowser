.class Lcom/mycompany/app/web/WebViewActivity$626;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$626;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$626;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 15
    .line 16
    iput-object p3, p1, Lcom/mycompany/app/web/WebViewActivity;->Rn:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p4, p1, Lcom/mycompany/app/web/WebViewActivity;->Sn:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$626$1;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$626$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$626;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
