.class Lcom/mycompany/app/main/MainFilterSvc$DialogTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainFilterSvc;

.field public final synthetic f:Lcom/mycompany/app/main/MainFilterSvc$DialogTask;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainFilterSvc$DialogTask;Lcom/mycompany/app/main/MainFilterSvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask$1;->f:Lcom/mycompany/app/main/MainFilterSvc$DialogTask;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask$1;->c:Lcom/mycompany/app/main/MainFilterSvc;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask$1;->f:Lcom/mycompany/app/main/MainFilterSvc$DialogTask;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->f:Ljava/util/List;

    .line 4
    .line 5
    iget v0, v0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->g:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask$1;->c:Lcom/mycompany/app/main/MainFilterSvc;

    .line 10
    .line 11
    invoke-virtual {v2, v0, v1}, Lcom/mycompany/app/main/MainFilterSvc;->b(ILjava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
