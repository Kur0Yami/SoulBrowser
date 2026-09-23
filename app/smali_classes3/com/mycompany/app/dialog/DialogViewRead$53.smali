.class Lcom/mycompany/app/dialog/DialogViewRead$53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$53;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$53;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->S0:Z

    .line 6
    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->j:Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;->a()Lcom/mycompany/app/web/WebNestView;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->X6(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c0:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->a0:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    new-instance p1, Lcom/mycompany/app/dialog/DialogViewRead$54;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lcom/mycompany/app/dialog/DialogViewRead$54;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "document.documentElement.innerHTML"

    .line 41
    .line 42
    invoke-virtual {v1, v0, p1}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const-string p1, "(function(){android.onReadHtml(document.documentElement.innerHTML);})();"

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-static {v1, p1, v0}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method
