.class Lcom/mycompany/app/web/WebViewActivity$679$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/mycompany/app/web/WebViewActivity$679;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$679;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$679$1;->g:Lcom/mycompany/app/web/WebViewActivity$679;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$679$1;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mycompany/app/web/WebViewActivity$679$1;->f:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$679$1;->g:Lcom/mycompany/app/web/WebViewActivity$679;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$679;->g:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lcom/mycompany/app/web/WebViewActivity$679$1;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/web/WebViewActivity;->S5(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebViewActivity$679$1;->f:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$679;->f:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v0, v3}, Lcom/mycompany/app/web/WebNestView;->P(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    sget v0, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
