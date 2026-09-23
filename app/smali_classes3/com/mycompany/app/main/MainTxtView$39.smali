.class Lcom/mycompany/app/main/MainTxtView$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$39;->a:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView$39;->a:Lcom/mycompany/app/main/MainTxtView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainTxtAdapter;->x(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    sput p1, Lcom/mycompany/app/pref/PrefRead;->m:I

    .line 13
    .line 14
    return-void
.end method
