.class Lcom/mycompany/app/web/WebTabAdapter$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebTabAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter$10;->c:Lcom/mycompany/app/web/WebTabAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter$10;->c:Lcom/mycompany/app/web/WebTabAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->M:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebTabAdapter;->M:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v1, :cond_5

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_5

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v4, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-boolean v5, v4, Lcom/mycompany/app/web/WebNestFrame;->c:Z

    .line 41
    .line 42
    if-nez v5, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-object v5, v0, Lcom/mycompany/app/web/WebTabAdapter;->B:Lcom/mycompany/app/web/WebNestFrame;

    .line 46
    .line 47
    if-eqz v5, :cond_4

    .line 48
    .line 49
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-virtual {v5, v3}, Lcom/mycompany/app/web/WebNestFrame;->setValid(Z)V

    .line 57
    .line 58
    .line 59
    iput-object v2, v0, Lcom/mycompany/app/web/WebTabAdapter;->B:Lcom/mycompany/app/web/WebNestFrame;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    iget-object v3, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 63
    .line 64
    invoke-virtual {v3, v2}, Lcom/mycompany/app/web/WebNestFrame;->t(Lcom/mycompany/app/web/WebNestView;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    :goto_1
    return-void
.end method
