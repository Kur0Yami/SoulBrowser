.class Lcom/mycompany/app/quick/QuickAdapter$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/quick/QuickAdapter$14;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdapter$14;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter$14$1;->f:Lcom/mycompany/app/quick/QuickAdapter$14;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/quick/QuickAdapter$14$1;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter$14$1;->f:Lcom/mycompany/app/quick/QuickAdapter$14;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdapter$14;->c:Lcom/mycompany/app/quick/QuickAdapter;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 6
    .line 7
    sget v2, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 8
    .line 9
    const-string v3, "Copied text"

    .line 10
    .line 11
    iget-object v4, p0, Lcom/mycompany/app/quick/QuickAdapter$14$1;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2, v1, v3, v4}, Lcom/mycompany/app/main/MainUtil;->v(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdapter;->C:Lcom/mycompany/app/quick/QuickAdapter$QuickRcntListener;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    check-cast v0, Lcom/mycompany/app/quick/QuickSearch$7;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$7;->a:Lcom/mycompany/app/quick/QuickSearch;

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Lcom/mycompany/app/quick/QuickSearch;->setLoadClip(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
