.class Lcom/mycompany/app/web/WebReadTask$LocalWebViewClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebReadTask$LocalWebViewClient;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebReadTask$LocalWebViewClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebReadTask$LocalWebViewClient$2;->c:Lcom/mycompany/app/web/WebReadTask$LocalWebViewClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask$LocalWebViewClient$2;->c:Lcom/mycompany/app/web/WebReadTask$LocalWebViewClient;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebReadTask$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebReadTask;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/web/WebReadTask;->g:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/web/WebReadTask;->h:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v0, v3}, Lcom/mycompany/app/web/WebNestView;->L(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
