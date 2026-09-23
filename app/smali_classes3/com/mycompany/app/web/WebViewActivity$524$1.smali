.class Lcom/mycompany/app/web/WebViewActivity$524$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:I

.field public final synthetic h:Z

.field public final synthetic i:Lcom/mycompany/app/web/WebViewActivity$524;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$524;ZLjava/util/List;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$524$1;->i:Lcom/mycompany/app/web/WebViewActivity$524;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebViewActivity$524$1;->c:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/web/WebViewActivity$524$1;->f:Ljava/util/List;

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/web/WebViewActivity$524$1;->g:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/mycompany/app/web/WebViewActivity$524$1;->h:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$524$1;->i:Lcom/mycompany/app/web/WebViewActivity$524;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$524;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebViewActivity$524$1;->c:Z

    .line 10
    .line 11
    iget-object v3, p0, Lcom/mycompany/app/web/WebViewActivity$524$1;->f:Ljava/util/List;

    .line 12
    .line 13
    iget v4, p0, Lcom/mycompany/app/web/WebViewActivity$524$1;->g:I

    .line 14
    .line 15
    iget-boolean v5, p0, Lcom/mycompany/app/web/WebViewActivity$524$1;->h:Z

    .line 16
    .line 17
    if-eq v1, v5, :cond_2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 22
    .line 23
    iput v4, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 24
    .line 25
    :cond_0
    if-eqz v5, :cond_1

    .line 26
    .line 27
    sput v4, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sput v4, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, v5}, Lcom/mycompany/app/web/WebViewActivity;->l8(Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/web/WebViewActivity;->s8(ILjava/util/List;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v4, v1}, Lcom/mycompany/app/web/WebViewActivity;->c7(IZ)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
