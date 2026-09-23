.class Lcom/mycompany/app/web/WebViewActivity$224;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$224;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$224;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->U8:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->V8:Z

    .line 22
    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->w:Z

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->x2:Lcom/mycompany/app/view/MyEditAuto;

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$225;

    .line 36
    .line 37
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebViewActivity$225;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v4, 0xc8

    .line 41
    .line 42
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    :cond_4
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->U8:Z

    .line 46
    .line 47
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->V8:Z

    .line 48
    .line 49
    return-void
.end method
