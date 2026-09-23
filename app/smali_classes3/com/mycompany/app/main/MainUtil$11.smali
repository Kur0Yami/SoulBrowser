.class Lcom/mycompany/app/main/MainUtil$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainUtil$11;->c:Landroid/app/Activity;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/main/MainUtil$11;->f:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainUtil$11;->c:Landroid/app/Activity;

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/main/MainUtil$11;->f:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->B7(Landroid/app/Activity;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
