.class Lcom/mycompany/app/web/WebViewActivity$356;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$356;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$356;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    sget v1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 7
    .line 8
    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    .line 9
    .line 10
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    .line 14
    .line 15
    const-string v4, "web_search"

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    sget-object v3, Lcom/mycompany/app/main/MainApp;->I1:Ljava/util/Locale;

    .line 21
    .line 22
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f2(Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    const-string v4, "android.speech.extra.LANGUAGE"

    .line 33
    .line 34
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    :cond_0
    const/16 v3, 0x11

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 40
    .line 41
    .line 42
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->k9:Z

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->E7(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    sget v2, Lnet/kaki87/soul2/testing/R$string;->not_supported:I

    .line 49
    .line 50
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_1
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apps_none:I

    .line 55
    .line 56
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Vj:Z

    .line 60
    .line 61
    return-void
.end method
