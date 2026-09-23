.class Lcom/mycompany/app/web/WebViewActivity$524$2;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$524$2;->i:Lcom/mycompany/app/web/WebViewActivity$524;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebViewActivity$524$2;->c:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/web/WebViewActivity$524$2;->f:Ljava/util/List;

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/web/WebViewActivity$524$2;->g:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/mycompany/app/web/WebViewActivity$524$2;->h:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$524$2;->i:Lcom/mycompany/app/web/WebViewActivity$524;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$524;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget v1, p0, Lcom/mycompany/app/web/WebViewActivity$524$2;->g:I

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebViewActivity$524$2;->h:Z

    .line 8
    .line 9
    iget-boolean v3, p0, Lcom/mycompany/app/web/WebViewActivity$524$2;->c:Z

    .line 10
    .line 11
    iget-object v4, p0, Lcom/mycompany/app/web/WebViewActivity$524$2;->f:Ljava/util/List;

    .line 12
    .line 13
    invoke-static {v0, v3, v4, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->k1(Lcom/mycompany/app/web/WebViewActivity;ZLjava/util/List;IZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
