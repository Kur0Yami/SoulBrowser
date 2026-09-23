.class Lcom/mycompany/app/dialog/DialogDownList$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Lcom/mycompany/app/dialog/DialogDownList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownList;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$20;->h:Lcom/mycompany/app/dialog/DialogDownList;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogDownList$20;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogDownList$20;->f:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogDownList$20;->g:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownList$DialogTask;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList$20;->f:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownList$20;->g:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogDownList$20;->h:Lcom/mycompany/app/dialog/DialogDownList;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogDownList$20;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/mycompany/app/dialog/DialogDownList$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogDownList;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, v3, Lcom/mycompany/app/dialog/DialogDownList;->y0:Lcom/mycompany/app/dialog/DialogDownList$DialogTask;

    .line 15
    .line 16
    iget-object v1, v3, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
