.class Lcom/mycompany/app/quick/QuickNewsCustom$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickNewsCustom$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickNewsCustom$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNewsCustom$1$1;->c:Lcom/mycompany/app/quick/QuickNewsCustom$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNewsCustom$1$1;->c:Lcom/mycompany/app/quick/QuickNewsCustom$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNewsCustom$1;->c:Lcom/mycompany/app/quick/QuickNewsCustom;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickNewsCustom;->j:Ljava/util/List;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Lcom/mycompany/app/quick/QuickNewsCustom;->j:Ljava/util/List;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickNews;->b:Lcom/mycompany/app/quick/QuickNews$NewsListListener;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-interface {v1, v2, v4}, Lcom/mycompany/app/quick/QuickNews$NewsListListener;->b(Ljava/util/List;Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickNewsCustom$1;->c:Lcom/mycompany/app/quick/QuickNewsCustom;

    .line 19
    .line 20
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickNews;->b:Lcom/mycompany/app/quick/QuickNews$NewsListListener;

    .line 21
    .line 22
    :cond_0
    return-void
.end method
