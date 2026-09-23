.class Lcom/mycompany/app/dialog/DialogPassLoad$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPassLoad$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassLoad$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassLoad$8$1;->c:Lcom/mycompany/app/dialog/DialogPassLoad$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad$8$1;->c:Lcom/mycompany/app/dialog/DialogPassLoad$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPassLoad$8;->c:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->A0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 16
    .line 17
    iget-boolean v3, v3, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iput v4, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->w0:I

    .line 23
    .line 24
    :cond_1
    iput v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->b0:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogPassLoad;->B(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->B0:Z

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->x0:Z

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->x0:Z

    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->b0:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogPassLoad;->B(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPassLoad;->E()V

    .line 47
    .line 48
    .line 49
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->B0:Z

    .line 50
    .line 51
    return-void
.end method
