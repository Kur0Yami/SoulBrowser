.class Lcom/mycompany/app/web/WebViewActivity$365$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$365;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$365;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$365$1;->c:Lcom/mycompany/app/web/WebViewActivity$365;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$365$1;->c:Lcom/mycompany/app/web/WebViewActivity$365;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$365;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->al:Z

    .line 6
    .line 7
    iget-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->bl:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v2, v1, Lcom/mycompany/app/web/WebViewActivity;->cl:J

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    iput-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->bl:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    .line 15
    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->l0:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v6, "image/*"

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v4, 0x3

    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/web/WebViewActivity;->H9(JILjava/lang/String;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    sget v0, Lnet/kaki87/soul2/testing/R$string;->down_complete:I

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x1

    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/web/WebViewActivity;->H9(JILjava/lang/String;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
