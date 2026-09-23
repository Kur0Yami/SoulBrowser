.class Lcom/mycompany/app/web/WebViewActivity$609;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$609;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$609;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->Z5(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iput v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Cn:I

    .line 25
    .line 26
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Dn:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$609$1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$609$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$609;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 39
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Xa:Ljava/lang/String;

    .line 40
    .line 41
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->J6:Z

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->J6:Z

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->n6()V

    .line 48
    .line 49
    .line 50
    :cond_3
    iput v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Cn:I

    .line 51
    .line 52
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Dn:Z

    .line 53
    .line 54
    return-void
.end method
