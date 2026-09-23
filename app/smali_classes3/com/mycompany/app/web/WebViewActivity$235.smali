.class Lcom/mycompany/app/web/WebViewActivity$235;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$235;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$235;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H8:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->J8:Z

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->L8:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->L8:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->Y7(Landroid/webkit/WebView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Z8()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->U:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v2, "(function(){var ele=document.querySelector(\"button[class*=\'ytp-unmute\']\");if(ele){ele.click();}})();"

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 51
    :goto_1
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->li:Z

    .line 52
    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->R6()V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method
