.class Lcom/mycompany/app/main/MainTxtView$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$28;->a:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget p1, Lcom/mycompany/app/main/MainTxtView;->X2:I

    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView$28;->a:Lcom/mycompany/app/main/MainTxtView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainTxtView;->P0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
