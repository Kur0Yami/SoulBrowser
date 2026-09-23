.class Lcom/mycompany/app/quick/QuickSearch$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$14;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$14;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/quick/QuickSearch;->a(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickSearch;->S:Z

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickSearch;->m()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
