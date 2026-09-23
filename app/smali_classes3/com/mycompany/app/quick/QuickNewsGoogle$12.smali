.class Lcom/mycompany/app/quick/QuickNewsGoogle$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickNewsGoogle;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$12;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$12;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->G:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->G:Ljava/util/List;

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickNews;->b:Lcom/mycompany/app/quick/QuickNews$NewsListListener;

    .line 9
    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    iget-object v4, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->t:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 19
    :goto_0
    invoke-interface {v3, v1, v4}, Lcom/mycompany/app/quick/QuickNews$NewsListListener;->b(Ljava/util/List;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v2, v0, Lcom/mycompany/app/quick/QuickNews;->b:Lcom/mycompany/app/quick/QuickNews$NewsListListener;

    .line 23
    .line 24
    :cond_1
    return-void
.end method
