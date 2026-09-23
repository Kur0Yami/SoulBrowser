.class Lcom/mycompany/app/web/WebNestFrame$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/web/WebNestFrame;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestFrame;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestFrame$4;->f:Lcom/mycompany/app/web/WebNestFrame;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/web/WebNestFrame$4;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame$4;->f:Lcom/mycompany/app/web/WebNestFrame;

    .line 2
    .line 3
    :try_start_0
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame$4;->c:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebNestFrame;->a(Lcom/mycompany/app/web/WebNestFrame;I)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0}, Lcom/mycompany/app/web/WebNestFrame;->b(Lcom/mycompany/app/web/WebNestFrame;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    move-object v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebNestFrame;->d(Lcom/mycompany/app/web/WebNestFrame;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebNestFrame;->t:Z

    .line 30
    .line 31
    return-void
.end method
