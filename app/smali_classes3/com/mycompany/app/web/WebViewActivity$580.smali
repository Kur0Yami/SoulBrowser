.class Lcom/mycompany/app/web/WebViewActivity$580;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebReadTask$WebReadListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$580;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$580;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->o8:Lcom/mycompany/app/web/WebReadTask;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebReadTask;->z()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->o8:Lcom/mycompany/app/web/WebReadTask;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$580;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object p4, p2, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-eqz p4, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p4, 0x1

    .line 12
    invoke-virtual {p2, p1, p3, p4}, Lcom/mycompany/app/web/WebViewActivity;->Q1(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p4, p1, p3}, Lcom/mycompany/app/main/MainUtil;->r6(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    iget-object p1, p2, Lcom/mycompany/app/web/WebViewActivity;->o8:Lcom/mycompany/app/web/WebReadTask;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebReadTask;->z()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p2, Lcom/mycompany/app/web/WebViewActivity;->o8:Lcom/mycompany/app/web/WebReadTask;

    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
