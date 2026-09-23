.class Lcom/mycompany/app/db/book/DbBookSub$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/mycompany/app/db/book/DbBookSub$2;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/mycompany/app/db/book/DbBookSub$2;->f:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/mycompany/app/db/book/DbBookSub$2;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, p0, Lcom/mycompany/app/db/book/DbBookSub$2;->h:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/db/book/DbBookSub$2;->g:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/db/book/DbBookSub$2;->h:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/db/book/DbBookSub$2;->c:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/mycompany/app/db/book/DbBookSub$2;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1, v2, v3, v0}, Lcom/mycompany/app/db/book/DbBookSub;->d(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
