.class Lcom/mycompany/app/quick/QuickNewsGoogle$11;
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
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$11;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$11;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->l:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/quick/QuickNewsGoogle$7;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/mycompany/app/quick/QuickNewsGoogle$7;-><init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/quick/QuickNews;->d(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
