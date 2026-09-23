.class Lcom/mycompany/app/web/WebHmgTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebNestView$WebHtmlListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebHmgTask;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgTask$1;->a:Lcom/mycompany/app/web/WebHmgTask;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgTask$1;->a:Lcom/mycompany/app/web/WebHmgTask;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/mycompany/app/web/WebHmgTask;->g:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, v0, Lcom/mycompany/app/web/WebHmgTask;->h:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, v0, Lcom/mycompany/app/web/WebHmgTask;->c:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p2, Lcom/mycompany/app/web/WebHmgTask$1$1;

    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebHmgTask$1$1;-><init>(Lcom/mycompany/app/web/WebHmgTask$1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
